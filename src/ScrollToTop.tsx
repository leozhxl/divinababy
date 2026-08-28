import { useEffect, useLayoutEffect, useRef } from 'react';
import { useLocation, useNavigationType } from 'react-router-dom';

const scrollPositions = new Map<string, number>();

export default function ScrollToTop() {
  const location = useLocation();
  const navigationType = useNavigationType();
  const prevKey = useRef(location.key);

  useEffect(() => {
    if ('scrollRestoration' in window.history) {
      window.history.scrollRestoration = 'manual';
    }
  }, []);

  useEffect(() => {
    const handleScroll = () => {
      scrollPositions.set(prevKey.current, window.scrollY);
    };
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  useLayoutEffect(() => {
    prevKey.current = location.key;

    if (navigationType === 'POP') {
      const saved = scrollPositions.get(location.key);
      if (saved !== undefined) {
        requestAnimationFrame(() => {
          requestAnimationFrame(() => {
            window.scrollTo(0, saved);
          });
        });
      }
    } else {
      window.scrollTo(0, 0);
    }
  }, [location, navigationType]);

  return null;
}
