React Project Starter
---------------------

A project skeleton based off of [create-react-app](https://github.com/facebook/create-react-app)

```
docker run -d \
    --name=<APP NAME> \
    -p 3000:3000 \
    -v <PATH TO SOURCE DIR>:/app/src \
    ambidexterich/project-starter
```
The container will determine which files to server based on the following logic:

* No volume mapped
    - Use the default `create-react-app` files
* Volume mapped
    * Contains no files
        - copy the default `create-react-app` files into the volume
    * Contains files
        * There is no `index.js`
            - copy the default `create-react-app` files into the volume
        * There is an `index.js`
            - attempt to build the `src` directory
