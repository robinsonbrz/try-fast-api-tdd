# try-fast-api-tdd

## Fast API

### Doc Reference

[DER](https://lucid.app/lucidchart/dcf7e614-f071-4832-99b6-361b13db1a9f/edit?invitationId=inv_12607d3e-7a85-4489-83fd-0aa57812706f&page=0_0#)


[alembic](resources/--dev-try-fastapi-development-2024-live-phase-1/_docs/commands/alembic.md)

[docker](resources/--dev-try-fastapi-development-2024-live-phase-1/_docs/commands/docker.md)

[docker-installation](resources/--dev-try-fastapi-development-2024-live-phase-1/_docs/docker-installation.md)

[macOS](resources/--dev-try-fastapi-development-2024-live-phase-1/_docs/commands/macOS.md)

[pip](resources/--dev-try-fastapi-development-2024-live-phase-1/_docs/commands/pip.md)

[postgres](resources/--dev-try-fastapi-development-2024-live-phase-1/_docs/commands/postgres.md)

[project-startup](resources/--dev-try-fastapi-development-2024-live-phase-1/_docs/commands/project-startup.md)

[pytest](resources/--dev-try-fastapi-development-2024-live-phase-1/_docs/commands/pytest.md)

[uvicorn](resources/--dev-try-fastapi-development-2024-live-phase-1/_docs/commands/uvicorn.md)

[vscode](resources/--dev-try-fastapi-development-2024-live-phase-1/_docs/commands/vscode.md)

[windows](resources/--dev-try-fastapi-development-2024-live-phase-1/_docs/commands/windows.md)


[functional-specificvations](resources/--dev-try-fastapi-development-2024-live-phase-1/_docs/specifications/functional_specifications.md)

[db-structura-testing](resources/--dev-try-fastapi-development-2024-live-phase-1/_docs/testing/structural testing/db_strucutural_testing.md)


uvicorn app.main:api

- **Ruff**: A code formatter for Python that enforces PEP 8 style guide recommendations.

https://12factor.net

```python
from dotenv import load_dotenv
load_dotenv()
debug_mode = os.getenv('DEBUG')
print(f'Debug Mode: {debug_mode}')
```

```
  dev-db:
    image: postgres:16.1-alpine3.19
    # restart: always
    env_file:
      - ./.env
    ports:
      - "5433:5432"
    volumes:
      - ./scripts:/docker-entrypoint-initdb.d  # this folder is binded internally
            # postgres executes the files on this folder on initialization

```



Alembic

Database Version Control

alembic init migrations

create app/db_connection.py

personalize migrations/env.py # with connections info

alembic revision --autogenerate -m "initial"

alembic -n devdb revision --autogenerate -m "initial"

alembic -n devdb upgrade head
