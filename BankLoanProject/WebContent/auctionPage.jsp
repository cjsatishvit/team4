<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Auction Page</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
      integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
      crossorigin="anonymous"
    />
 
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Auction System</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarNavAltMarkup"
        aria-controls="navbarNavAltMarkup"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link active" href="auctionPage.jsp"
            >Home
            <span class="sr-only">(current)</span></a
          >
          <a class="nav-item nav-link" href="auctionPay.jsp">Payment</a>
          <a class="nav-item nav-link" href="#">Logout</a>
        </div>
      </div>
    </nav>

    <div class="row">
      <div class="col-8">
        <div class="card mb-3" style="max-width: 1080px;">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img
                src="..."
                class="card-img"
                alt="..."
              />
            </div>
            <div class="col-md-8">
              <div class="card-body text-dark">
                <h5 class="card-title">
                  Jewel title
                </h5>
                <p class="card-text">
                  Base Price: <br />
                  Current Bid price:
                </p>
                <p class="card-text">
                  <medium class="text-muted"
                    >Metal: <br />
                    Weight:
                  </medium>
                </p>
                <a
                  href="#"
                  class="btn btn-dark btn-lg"
                  type="submit"
                  >BID</a
                >
              </div>
            </div>
          </div>
        </div>
        <div class="card mb-3" style="max-width: 1080px;">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img
                src="..."
                class="card-img"
                alt="..."
              />
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">
                  Jewel title
                </h5>
                <p class="card-text">
                  Base Price: <br />
                  Current Bid price:
                </p>
                <p class="card-text">
                  <medium class="text-muted"
                    >Metal: <br />
                    Weight:
                  </medium>
                </p>
                <a
                  href="#"
                  class="btn btn-dark btn-lg"
                  type="submit"
                  >BID</a
                >
              </div>
            </div>
          </div>
        </div>
        <div class="card mb-3" style="max-width: 1080px;">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img
                src="..."
                class="card-img"
                alt="..."
              />
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">
                  Jewel title
                </h5>
                <p class="card-text">
                  Base Price: <br />
                  Current Bid price:
                </p>
                <p class="card-text">
                  <medium class="text-muted"
                    >Metal: <br />
Weight:
                  </medium>
                </p>
                <a
                  href="#"
                  class="btn btn-dark btn-lg"
                  type="submit"
                  >BID</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-4">
        <div class="row row-cols-3 row-cols-md-2">
          <div class="col-sm-4">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">
                  Active Users
                </h5>
                <p class="card-text">lore</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>