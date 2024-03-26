import React from 'react';
import axios from 'axios';
const vers =  'V.0.1';
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
            this.setState({ data: response.data }); console.log(vers, ' - LN 21 - response.data: ', response.data );
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
                    <div id="discounts-carousel" className="carousel carousel-dark slide d-none d-lg-block" data-bs-ride="carousel">
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
                                                        <p className="card-text title-blog my-1" dangerouslySetInnerHTML={{ __html: card.name }}></p>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-md-12 mx-2 mb-2">
                                                        <p className="card-text date-blog text-muted mb-1">{card.datepublish}</p>
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
                <div className="d-flex justify-content-center circles mb-5">
                    <svg className="" height="14" viewBox="0 0 54 14" fill="none">
                        <circle cx="5" cy="7" r="5" fill="#E5E5E5" />
                        <circle cx="27" cy="7" r="7" fill="#FA7436" />
                        <circle cx="49" cy="7" r="5" fill="#E5E5E5" />
                    </svg>
                </div>
            </section>
        );
    }
}

export default Blogs;
