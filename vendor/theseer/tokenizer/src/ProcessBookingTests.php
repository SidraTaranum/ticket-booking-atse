<?php
class ProcessBooking {
    public function bookTickets($movie, $seats) {
        // Check if movie is available
        if (!$this->isMovieAvailable($movie)) {
            throw new Exception('Selected movie is not available.');
        }

        // Check if seats are available
        if (!$this->areSeatsAvailable($movie, $seats)) {
            throw new Exception('Selected seats are not available.');
        }

        // Calculate the total cost
        $totalCost = $this->calculateTotalCost($movie, $seats);

        // Perform the ticket booking process
        $bookingReference = $this->performTicketBooking($movie, $seats, $totalCost);

        return $bookingReference;
    }

    private function isMovieAvailable($movie) {
        // Your implementation to check if the movie is available
        // Example: Check against a list of available movies in the database
        return true; // Placeholder value
    }

    private function areSeatsAvailable($movie, $seats) {
        // Your implementation to check if the seats are available for the given movie
        // Example: Check against the seat availability status in the database
        return true; // Placeholder value
    }

    private function calculateTotalCost($movie, $seats) {
        // Your implementation to calculate the total cost based on the movie and selected seats
        // Example: Retrieve the seat prices for the movie from the database and perform the calculation
        $seatPrice = 10; // Assuming each seat costs $10
        $totalCost = count($seats) * $seatPrice;

        return $totalCost;
    }

    private function performTicketBooking($movie, $seats, $totalCost) {
        // Your implementation to perform the ticket booking process
        // Example: Create a booking record in the database and generate a booking reference
        $bookingReference = 'ABC123'; // Placeholder value

        return $bookingReference;
    }
}
