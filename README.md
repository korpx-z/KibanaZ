# KibanaZ

This repository contains the files for Kibana from this repository: https://github.com/linux-on-ibm-z/dockerfile-examples

# License

dockerfile-examples is licensed under the Apache License, Version 2.0.
Kibana is licensed under the Elastic License https://github.com/elastic/logstash/blob/6.4/licenses/ELASTIC-LICENSE.txt


# Quick reference

-	**Maintained by**:  
	[the Elastic Team](https://github.com/elastic/kibana)
  
 -	**Port Maintained by**:  
[Linux-on-IBM-Z Dockerfile Examples Repo](https://github.com/linux-on-ibm-z/dockerfile-examples)


-	**Where to get help**:  
	the [Kibana Discuss Forums](https://discuss.elastic.co/c/kibana), the [Elastic community](https://www.elastic.co/community)

# Supported tags and respective `Dockerfile` links

-	[`7.9.1`](https://github.com/YBA-IBM/KibanaZ/blob/main/Kibana/Dockerfile)

# Quick reference (cont.)

-	**Where to file issues**:  
	For issues with the Kibana Docker image or Kibana: https://github.com/YBA-IBM/KibanaZ/issues

-	**Supported architectures**: s390x

# What is Kibana?

Kibana is an open source analytics and visualization platform designed to work with Elasticsearch. You use Kibana to search, view, and interact with data stored in Elasticsearch indices. You can easily perform advanced data analysis and visualize your data in a variety of charts, tables, and maps.

> For more information about Kibana, please visit [www.elastic.co/products/kibana](https://www.elastic.co/products/kibana)

![logo](https://raw.githubusercontent.com/docker-library/docs/7baeec9386c1d3960fc9021a5973694b2e0e1af9/kibana/logo.png)

# About This Image

The default distribution is governed by the Elastic License, and includes the [full set of free features](https://www.elastic.co/subscriptions).

The Linux-on-IBM-Z Dockerfile Examples port is governed by the [Apache 2.0 License](http://www.apache.org/licenses/LICENSE-2.0)

View the detailed release notes [here](https://www.elastic.co/guide/en/kibana/current/release-notes.html).

# How to use this image

**Note:** Pulling an images requires using a specific version number tag. The `latest` tag is not supported.

For Kibana versions prior to 6.4.0 a full list of images, tags, and documentation can be found at [docker.elastic.co](https://www.docker.elastic.co/).

For full Kibana documentation see [here](https://www.elastic.co/guide/en/kibana/index.html).

## Running in Development Mode

In the given example, Kibana will a attach to a user defined network (useful for connecting to other services (e.g. Elasticsearch)). If network has not yet been created, this can be done with the following command:

```console
$ docker network create somenetwork
```

*Note: In this example, Kibana is using the default configuration and expects to connect to a running Elasticsearch instance at http://localhost:9200*

Run Kibana

```console
$ docker run -d --name kibana --net somenetwork -p 5601:5601 kibana:tag
```

Kibana can be accessed by browser via `http://localhost:5601` or `http://host-ip:5601`

## Running in Production Mode

For additional information on running and configuring Kibana on Docker, see [Running Kibana on Docker](https://www.elastic.co/guide/en/kibana/current/docker.html)

# License

View [Elastic license information](https://github.com/elastic/kibana/blob/master/licenses/ELASTIC-LICENSE.txt) and [Apache 2.0 license information](http://www.apache.org/licenses/LICENSE-2.0)for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

Some additional license information which was able to be auto-detected might be found in [the `repo-info` repository's `kibana/` directory](https://github.com/docker-library/repo-info/tree/master/repos/kibana).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
