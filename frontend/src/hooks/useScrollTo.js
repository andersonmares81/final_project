import { useNavigate, useLocation } from 'react-router-dom';

export default function useScrollTo() {
  const navigate = useNavigate();
  const location = useLocation();

  const handleScrollTo = (sectionId) => {
    if (location.pathname === '/') {
      scrollToSection(sectionId);
    } else {
      navigate('/');    
      setTimeout(() => scrollToSection(sectionId), 500) ;
    }
  };

  const scrollToSection = (sectionId) => {
    const element = document.getElementById(sectionId);

    if (element) {
      element.scrollIntoView({ behavior: 'smooth' });
    } else {
      console.warn(`Element with ID "${sectionId}" not found.`);
    }
  };

  return { handleScrollTo };
}

