class InvoicePdf < Prawn::Document
  def initialize(invoice)
    super(top_margin: 50)
    @invoice = invoice
    invoice_number
    line_items
  end

  def invoice_number
    invoice_date
    move_up 10
    text "Invoice no: #{ @invoice.id + 1 || 1 }", size: 10, style: :bold, align: :right
  end

  def invoice_date
    move_down 20
    text "Date: #{@invoice.date}", size: 10, align: :left
  end

  def line_items
    invoice_from
    move_down 10
    invoice_to
    move_down 10
    invoice_amount
  end

  def invoice_from
    move_down 40
    text "From: #{@invoice.company}", align: :center
  end

  def invoice_to
    text "To: #{@invoice.contractor}", align: :center
  end

  def invoice_amount
    text "Total amount: #{@invoice.amount} #{@invoice.currency}", align: :center, style: :bold
  end
end
