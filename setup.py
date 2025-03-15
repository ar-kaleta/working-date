from setuptools import setup, find_packages

setup(
    name='working-date',
    version='0.1',
    packages=find_packages(),
    install_requires=[
        'sys',
        'datetime'
    ],
)