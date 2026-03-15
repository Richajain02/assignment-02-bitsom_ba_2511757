## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for searching large legal contracts using natural language questions. Keyword searches rely on exact word matches, which means they may fail when the wording in the query is different from the wording used in the document. For example, a lawyer might ask “What are the termination clauses?”, while the contract might use phrases such as “conditions for ending the agreement” or “agreement cancellation terms”. A keyword search may miss these sections because the exact words do not match.  

A vector database solves this limitation by using embeddings to represent the semantic meaning of text. Instead of storing text as simple strings, the system converts each paragraph or section of the contract into a numerical vector using an embedding model. These vectors capture the meaning of the text rather than just the exact words used.  

When a lawyer enters a question in plain English, the system converts the query into a vector and compares it with the vectors of all contract sections using similarity measures such as cosine similarity. The vector database quickly retrieves the sections whose meanings are closest to the query.  

This approach enables semantic search, allowing lawyers to find relevant clauses even when different terminology is used. As a result, vector databases make searching long legal documents more accurate, faster, and more useful than traditional keyword-based search systems.
