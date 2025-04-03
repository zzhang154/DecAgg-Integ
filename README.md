# Decentralized Data Aggregation Project

This repository contains the full project files for **Decentralized Data Aggregation**, including all necessary ns-3 files. Unlike the [Decentralized Aggregation](https://github.com/zzhang154/Decentralized-Aggregation) repository which primarily implies the ndnSIM files, this repository bundles the entire integration framework.

**Note:** This project is built on **ndnSIM-2.9** and integrates advanced congestion control methods, including **PCON** and other congestion control strategies.

## Repository Structure and Cloning

The `./src/ndnSIM` folder is maintained as a submodule. To ensure that you clone the complete project (including the correct version of the submodule), use the following command:

```shell
git clone --recursive https://github.com/zzhang154/DecAgg-Integ.git
```

If you have already cloned without the submodules, update them by running:

```shell
git submodule update --init --recursive
```

## Building and Running the Project

For a successful run, please review the `./gdb_run.sh` script. This file already contains a commented command similar to:

```shell
./waf configure --disable-python --enable-examples -d optimized
```

**Steps to Build and Run:**

1. **Configure the Build:**  
   Uncomment the configuration command (or run it manually) to set up the build:
   ```shell
   ./waf configure --disable-python --enable-examples -d optimized
   ```
2. **Run the Project:**  
   After configuration, simply execute:
   ```shell
   bash ./gdb_run.sh
   ```

## Additional Details

For further information on the structure and integration of the ndnSIM project, please refer to [Decentralized Aggregation Documentation](https://github.com/zzhang154/Decentralized-Aggregation). There you will find an additional markdown file that provides detailed insights into the ndnSIM project integration, including its congestion control methods.

---

<!--
The following are excerpts from the ns-3 documentation for reference.
...existing ns-3 instructions...
-->