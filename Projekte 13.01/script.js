
<script>
    function convertCurrency() {
        var amount = parseFloat(document.getElementById("amount").value);
        var currency = document.getElementById("currency").value;
        var resultField = document.getElementById("result");

        // Beispielhafte Wechselkurse (hart kodiert)
        var rates = {
            "USD": 1.0,
            "EUR": 0.85,
            "GBP": 0.75,
            "JPY": 110.0
        };

        // Überprüfen, ob der Betrag gültig ist
        if (isNaN(amount) || amount <= 0) {
            resultField.value = "Bitte einen gültigen Betrag eingeben.";
            return;
        }

        // Berechne das Ergebnis
        var result = amount * rates[currency];
        resultField.value = result.toFixed(2) + " " + currency;
    }
</script>