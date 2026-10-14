var builder = WebApplication.CreateBuilder(args);

// Підключення контролерів
builder.Services.AddControllers();

// Налаштування CORS
builder.Services.AddCors(options =>
{
    options.AddDefaultPolicy(policy =>
    {
        policy.AllowAnyOrigin().AllowAnyHeader().AllowAnyMethod();
    });
});

var app = builder.Build();

app.UseCors();

// Роздача статичних файлів з wwwroot (HTML, CSS, JS)
app.UseDefaultFiles();
app.UseStaticFiles();

// Інформаційний маршрут API
app.MapGet("/api-info", () => "Це API поштового сервісу PostService.");

// Реєстрація маршрутів контролерів
app.MapControllers();

app.Run();
