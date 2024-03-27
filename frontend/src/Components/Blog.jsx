import React from 'react';
import axios from 'axios';
import '../styles/Blog.css'
const vers = 'V.0.1';
console.log('| LN04 - ', vers, ' - Blogs.jsx |');

class Blogs extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            data: []
        };
    }

    componentDidMount() {
        this.fetchData();
    }

    fetchData = () => {
        axios.get('http://localhost:4001/api/blogs')
            .then(response => {
                this.setState({ data: response.data }); console.log(vers, ' - LN 21 - response.data: ', response.data);
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    };

    render() {
        return (
            <section className="blog p-3" id="blog-box">
                <div className="container text-center mt-5">
                    <h1 className="box-title carousel-title"><b>Get updated with<span className="orange-color"> the latest blog</span></b></h1>
                </div>
                <div className="container blog-cards">
                    <div id="blog-carousel" className="carousel carousel-dark slide d-none d-lg-block" data-bs-ride="carousel">
                        <div className="carousel-inner">
                            {this.state.data.length > 0 && this.state.data.reduce((groups, item, index) => {
                                if (index % 4 === 0) {
                                    groups.push([]);
                                }
                                const groupIndex = Math.floor(index / 4);
                                groups[groupIndex].push(item);
                                return groups;
                            }, []).map((group, groupIndex) => (
                                <div key={groupIndex} className={`carousel-item ${groupIndex === 0 ? 'active' : ''}`}>
                                    <div className="card-wrapper container-sm d-flex">
                                        {group.map(card => (
                                            <div key={card.id} className="card discounts-carousel-card card-exclusive">
                                                <img src={`../images/blogs/${card.images}`} className="img-blog rounded img-fluid" alt="Blog picture" />
                                                <div className="row">
                                                    <div className="col-md-12 ms-2 me-4 mt-2 fw-bold">
                                                        <p className="card-text title-blog my-1" dangerouslySetInnerHTML={{ __html: card.title }}></p>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-md-12 mx-2 mb-2">
                                                        <p className="card-text date-blog text-muted mb-1">{card.date}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        ))}
                                    </div>
                                </div>
                            ))}
                        </div>
                    </div>
                </div>
                <div className="arrows d-flex justify-content-center">
                    <button className="btn slider-btn me-3 my-3 p-0 border-0" type="button" data-bs-target="#blog-carousel" data-bs-slide="prev">
                        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" className="svg-left-arrow bi bi-arrow-left-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0m-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5z" />
                        </svg>
                    </button>
                    <button className="btn slider-btn ms-3 my-3 p-0 border-0" type="button" data-bs-target="#blog-carousel" data-bs-slide="next">
                        <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" className="svg-right-arrow bi bi-arrow-right-circle" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8m15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0M4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5z" />
                        </svg>
                    </button>
                </div>
            </section>
        );
    }
}

export default Blogs;
