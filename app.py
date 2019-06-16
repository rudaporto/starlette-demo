from starlette.applications import Starlette
from starlette.responses import JSONResponse

app = Starlette(debug=False)


@app.route('/')
async def homepage(request):
    return JSONResponse({'hello': 'world'})

