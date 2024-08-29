// Beispielhafte Umrechnungskurse
const conversionRates = {
    "EUR": { "USD": 1.10, "GBP": 0.85, "JPY": 146.53 },
    "USD": { "EUR": 0.91, "GBP": 0.77, "JPY": 133.20 },
    "GBP": { "EUR": 1.18, "USD": 1.30, "JPY": 173.00 },
    "JPY": { "EUR": 0.0068, "USD": 0.0075, "GBP": 0.0058 },
};

function convertCurrency() {
    const amount = parseFloat(document.getElementById("amount").value);
    const fromCurrency = document.getElementById("fromCurrency").value;
    const toCurrency = document.getElementById("toCurrency").value;
    
    if (!isNaN(amount)) {
        const rate = conversionRates[fromCurrency][toCurrency];
        const result = amount * rate;
        document.getElementById("result").value = result.toFixed(2);
    } else {
        document.getElementById("result").value = "Ungültiger Betrag";
    }
}