import React from 'react';
import Card from 'react-bootstrap/Card';
import '../styles/Reviews.css';
import axios from 'axios';

class Reviews extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            data: [],
            currentIndex: 0
        };
    }

    componentDidMount() {
        this.fetchData();
    }

    fetchData = () => {
        axios.get('http://localhost:4001/api/reviews')
            .then(response => {
                this.setState({ data: response.data });
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    };

    handlePrevClick = () => {
        this.setState(prevState => ({
            currentIndex: prevState.currentIndex === 0 ? this.state.data.length - 1 : prevState.currentIndex - 1
        }));
    };

    handleNextClick = () => {
        this.setState(prevState => ({
            currentIndex: prevState.currentIndex === this.state.data.length - 1 ? 0 : prevState.currentIndex + 1
        }));
    };

    render() {
        const { data, currentIndex } = this.state;
        return (
            <section className="" id="reviews">
                <div className="container col-xxl-8">
                    <div className="row flex-lg-row align-items-center g-5 px-5">
                        <div className="col-lg-5">
                            <h1 className="display-5 fw-bold lh-1 mb-3">What people say<b className="orange-color"> <br />about us.</b></h1>
                            <p className="lead">Our Clients send us bunch of smilies with our services and we love them.</p>
                            <div className="d-flex gap-2 mt-3 mb-4 justify-content-start">
                                <button className="btn" onClick={this.handlePrevClick}>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" className="svg-left-arrow bi bi-arrow-left-circle" viewBox="0 0 16 16">
                                        <path fillRule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0m-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5z" />
                                    </svg>
                                </button>
                                <button className="btn" onClick={this.handleNextClick}>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" className="svg-right-arrow bi bi-arrow-right-circle" viewBox="0 0 16 16">
                                        <path fillRule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5z" />
                                    </svg>
                                </button>
                            </div>
                        </div>
                        <div className="col-lg-7 position-relative">
                            {data.slice(currentIndex, currentIndex + 2).map((card, index) => (
                                <Card
                                    bg="light"
                                    key={index}
                                    text="dark"
                                    style={{
                                        width: '30rem',
                                        zIndex: 2 - index, // Asignar z-index inverso para que la segunda tarjeta tenga un valor más alto
                                    }}
                                    className="mb-2 mb-2-u position-relative"
                                >
                                    <Card.Body className='card-body-u'>
                                        <div className="custom-card-img-container-u">
                                            <Card.Img className='card-img-u' variant="top" src={`../images/reviews/${card.image}`} />
                                        </div>
                                        <Card.Text className="card-text-custom-u">
                                            "{card.text}"
                                        </Card.Text>
                                        <Card.Title className="card-title-custom-u">{card.name}</Card.Title>
                                        <Card.Text className="card-text-custom-u">{card.city}, {card.country}</Card.Text>
                                    </Card.Body>
                                </Card>
                            ))}
                        </div>
                    </div>
                </div>
            </section>
        )
    }
}

export default Reviews;







/*
export default function Reviews({ cards }) {

    const [currentIndex, setCurrentIndex] = useState(0);

    const handlePrevClick = () => {
        setCurrentIndex(prevIndex => (prevIndex === 0 ? cards.length - 1 : prevIndex - 1));
    };

    const handleNextClick = () => {
        setCurrentIndex(prevIndex => (prevIndex === cards.length - 1 ? 0 : prevIndex + 1));
    };
    return (
        <section className="" id="reviews">
            <div className="container col-xxl-8">
                <div className="row flex-lg-row align-items-center g-5 px-5">
                    <div className="col-lg-5">
                        <h1 className="display-5 fw-bold lh-1 mb-3">What people say<b className="orange-color"> <br />about us.</b></h1>
                        <p className="lead">Our Clients send us bunch of smilies with our services and we love them.</p>
                        <div className="d-flex gap-2 mt-3 mb-4 justify-content-start">
                            <button className="btn" onClick={handlePrevClick}>
                                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" className="svg-left-arrow bi bi-arrow-left-circle" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0m-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5z" />
                                </svg>
                            </button>
                            <button className="btn" onClick={handleNextClick}>
                                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" className="svg-right-arrow bi bi-arrow-right-circle" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5z" />
                                </svg>
                            </button>
                        </div>
                    </div>
                    <div className="col-lg-7 position-relative">
                        {cards.slice(currentIndex, currentIndex + 2).map((card, index) => (
                            <Card
                                bg="light"
                                key={index}
                                text="dark"
                                style={{
                                    width: '30rem',
                                    zIndex: 2 - index, // Asignar z-index inverso para que la segunda tarjeta tenga un valor más alto                                   
                                }}
                                className="mb-2 mb-2-u position-relative"
                            >
                                <Card.Body className='card-body-u'>
                                    <div className="custom-card-img-container-u">
                                        <Card.Img className='card-img-u' variant="top" src={require(`../images/img/${card.image}`)} />
                                    </div>
                                    <Card.Text className="card-text-custom-u">
                                        "{card.text}"
                                    </Card.Text>
                                    <Card.Title className="card-title-custom-u">{card.name}</Card.Title>
                                    <Card.Text className="card-text-custom-u">{card.city}, {card.country}</Card.Text>
                                </Card.Body>
                            </Card>
                        ))}
                    </div>
                </div>
            </div>
        </section>
    )
}
*/
