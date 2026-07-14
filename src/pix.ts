const PIX_KEY = '57403562000101';
const MERCHANT_NAME = 'TAMIRES';
const MERCHANT_CITY = 'BALNEARIO GAIVOTA';

function removeAccents(value: string): string {
  return value
    .normalize('NFD')
    .split('')
    .filter((ch) => {
      const code = ch.charCodeAt(0);
      return code < 0x0300 || code > 0x036f;
    })
    .join('');
}

function tlv(id: string, value: string): string {
  const length = value.length.toString().padStart(2, '0');
  return `${id}${length}${value}`;
}

function crc16(payload: string): string {
  let crc = 0xffff;
  for (let i = 0; i < payload.length; i++) {
    crc ^= payload.charCodeAt(i) << 8;
    for (let j = 0; j < 8; j++) {
      crc = (crc & 0x8000) !== 0 ? ((crc << 1) ^ 0x1021) & 0xffff : (crc << 1) & 0xffff;
    }
  }
  return crc.toString(16).toUpperCase().padStart(4, '0');
}

export function buildPixPayload(amount: number, txid = 'DIVINABABY'): string {
  const name = removeAccents(MERCHANT_NAME).slice(0, 25);
  const city = removeAccents(MERCHANT_CITY).slice(0, 15);
  const value = amount.toFixed(2);

  const merchantAccountInfo = tlv(
    '26',
    tlv('00', 'br.gov.bcb.pix') + tlv('01', PIX_KEY)
  );

  const additionalData = tlv('05', txid.slice(0, 25));

  const payload =
    tlv('00', '01') +
    merchantAccountInfo +
    tlv('52', '0000') +
    tlv('53', '986') +
    tlv('54', value) +
    tlv('58', 'BR') +
    tlv('59', name) +
    tlv('60', city) +
    additionalData +
    '6304';

  return payload + crc16(payload);
}
