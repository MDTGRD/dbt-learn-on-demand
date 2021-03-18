with payments as (

    select 
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        -- converting amount cause it is stored as cents
        amount / 100 as amount,
        created as created_at

    from dbt_dev.stripe.payment
)

select * from payments