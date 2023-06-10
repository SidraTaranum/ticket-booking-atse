<?php
use PHPUnit\Framework\TestCase;

class ProcessBookingTest extends TestCase
{
    public function testPaymentFormSubmission()
    {
    $processBooking = new ProcessBooking();

   
    $movie = 'Avengers';
    $seats = [1, 2, 3];

 
    $result = $processBooking->bookTickets($movie, $seats);

    $this->assertEquals('ABC123', $result);
    }    

}
