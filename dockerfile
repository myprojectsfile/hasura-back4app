# Use the official Hasura image as the base image
FROM hasura/graphql-engine:v2.0.0

# Set the environment variables for connecting to the Postgres database
# Replace the values with your own credentials
ENV HASURA_GRAPHQL_DATABASE_URL=postgres://username:password@hostname:port/dbname
ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true
ENV HASURA_GRAPHQL_ADMIN_SECRET=myadminsecretkey

# Expose port 8080 for the GraphQL endpoint and console
EXPOSE 8080

# Start the Hasura GraphQL Engine server
CMD graphql-engine serve
