<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class InvoiceMail extends Mailable
{
    use Queueable, SerializesModels;

    public $orders;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($order)
    {
        $this->orders = $order;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        // Generate PDF from view
        $pdf = \PDF::loadView('invoice', ['order_info' => $this->orders]);

        return $this->subject('Invoice from Aranya.com')
                    ->view('email.order_invoice', ['order_info' => $this->orders])
                    ->attachData($pdf->output(), 'invoice_' . $this->orders->id . '.pdf', [
                        'mime' => 'application/pdf',
                    ]);
        // return $this->subject('Invoice from Aranya.com')
        //         ->view('email.order_invoice',['order_info' => $this->orders]);
    }
}
