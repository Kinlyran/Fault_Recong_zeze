from mmseg.registry import DATASETS
from .basesegdataset import BaseSegDataset


@DATASETS.register_module()
class FaultDataset(BaseSegDataset):
    """Fault dataset.
    """
    METAINFO = dict(
        classes=('background', 'Fault'),
        palette=[[120, 120, 120], [6, 230, 230]])

    def __init__(self,
                 img_suffix='.npy',
                 seg_map_suffix='.png',
                 reduce_zero_label=False,
                 **kwargs) -> None:
        super().__init__(
            img_suffix=img_suffix,
            seg_map_suffix=seg_map_suffix,
            reduce_zero_label=reduce_zero_label,
            **kwargs)
