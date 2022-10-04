About levmar
============

Home: http://users.ics.forth.gr/~lourakis/levmar/

Package license: GPL2

Feedstock license: [BSD-3-Clause](https://github.com/astrorama/levmar-feedstock/blob/master/LICENSE.txt)

Summary: Levenberg-Marquardt nonlinear least squares algorithm

Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/astrorama/feedstock-builds/_build/latest?definitionId=4&branchName=master">
            <img src="https://dev.azure.com/astrorama/feedstock-builds/_apis/build/status/levmar-feedstock?branchName=master">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64</td>
              <td>
                <a href="https://dev.azure.com/astrorama/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/astrorama/feedstock-builds/_apis/build/status/levmar-feedstock?branchName=master&jobName=linux&configuration=linux_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64</td>
              <td>
                <a href="https://dev.azure.com/astrorama/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/astrorama/feedstock-builds/_apis/build/status/levmar-feedstock?branchName=master&jobName=osx&configuration=osx_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64</td>
              <td>
                <a href="https://dev.azure.com/astrorama/feedstock-builds/_build/latest?definitionId=4&branchName=master">
                  <img src="https://dev.azure.com/astrorama/feedstock-builds/_apis/build/status/levmar-feedstock?branchName=master&jobName=osx&configuration=osx_arm64_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-levmar-green.svg)](https://anaconda.org/astrorama/levmar) | [![Conda Downloads](https://img.shields.io/conda/dn/astrorama/levmar.svg)](https://anaconda.org/astrorama/levmar) | [![Conda Version](https://img.shields.io/conda/vn/astrorama/levmar.svg)](https://anaconda.org/astrorama/levmar) | [![Conda Platforms](https://img.shields.io/conda/pn/astrorama/levmar.svg)](https://anaconda.org/astrorama/levmar) |

Installing levmar
=================

Installing `levmar` from the `astrorama` channel can be achieved by adding `astrorama` to your channels with:

```
conda config --add channels astrorama
conda config --set channel_priority strict
```

Once the `astrorama` channel has been enabled, `levmar` can be installed with `conda`:

```
conda install levmar
```

or with `mamba`:

```
mamba install levmar
```

It is possible to list all of the versions of `levmar` available on your platform with `conda`:

```
conda search levmar --channel astrorama
```

or with `mamba`:

```
mamba search levmar --channel astrorama
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search levmar --channel astrorama

# List packages depending on `levmar`:
mamba repoquery whoneeds levmar --channel astrorama

# List dependencies of `levmar`:
mamba repoquery depends levmar --channel astrorama
```




Updating levmar-feedstock
=========================

If you would like to improve the levmar recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`astrorama` channel, whereupon the built conda packages will be available for
everybody to install and use from the `astrorama` channel.
Note that all branches in the astrorama/levmar-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================


