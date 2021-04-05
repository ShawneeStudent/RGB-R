"""algae dataset."""

import tensorflow_datasets as tfds

# TODO(algae): Markdown description  that will appear on the catalog page.
_DESCRIPTION = """
# Blue Green Algae 32x32RGB
This collection of images were gathered by Lane Knauff, Demetrius Rynolds, Nick Ludowese and Chase Adams.
The samples are 32x32 pixel images cropped from a larger image and then sorted.

"""

# TODO(algae): BibTeX citation
_CITATION = """
"""


class Algae(tfds.core.GeneratorBasedBuilder):
  """DatasetBuilder for algae dataset."""

  VERSION = tfds.core.Version('1.0.0')
  RELEASE_NOTES = {
      '1.0.0': 'Initial release.',
  }
  MANUAL_DOWNLOAD_INSTRUCTIONS = """
   Register into https://example.org/login to get the data. Place the `data.zip`
   file in the `manual_dir/`.
   """

  def _info(self) -> tfds.core.DatasetInfo:
    """Returns the dataset metadata."""
    # TODO(algae): Specifies the tfds.core.DatasetInfo object
    return tfds.core.DatasetInfo(
        builder=self,
        description=_DESCRIPTION,
        features=tfds.features.FeaturesDict({
            # These are the features of your dataset like images, labels ...
            'image': tfds.features.Image(shape=(32, 32, 3)),
            'label': tfds.features.ClassLabel(names=['NONE', 'ALGAE']),
        }),
        # If there's a common (input, target) tuple from the
        # features, specify them here. They'll be used if
        # `as_supervised=True` in `builder.as_dataset`.
        supervised_keys=('image', 'label'),  # Set to `None` to disable
        homepage='https://dataset-homepage/',
        citation=_CITATION,
    )

  def _split_generators(self, dl_manager: tfds.download.DownloadManager):
    """Returns SplitGenerators."""



    # data_path is a pathlib-like `Path('<manual_dir>/data.zip')`
    archive_path = dl_manager.manual_dir / 'data.zip'
    # Extract the manually downloaded `data.zip`
    extracted_path = dl_manager.extract(archive_path)

    # TODO(algae): Returns the Dict[split names, Iterator[Key, Example]]
    return {
        'train': self._generate_examples(extracted_path),
    }

  def _generate_examples(self, path):
    """Yields examples."""

    for f in path.glob('*.TIF'):
        yield 'key', {
            'image': f,
            'label': path.glob(f.name[:-4] + ".txt"),
        }
