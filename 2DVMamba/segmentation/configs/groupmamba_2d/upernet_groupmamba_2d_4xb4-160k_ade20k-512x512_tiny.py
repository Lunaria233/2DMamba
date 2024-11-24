_base_ = [
    '../swin/swin-tiny-patch4-window7-in1k-pre_upernet_8xb2-160k_ade20k-512x512.py'
]
checkpoint_path = ('')
model = dict(
    backbone=dict(
        type='MM_GroupMamba',
        pretrained=checkpoint_path, # here is the path
        stem_hidden_dim=32,
        embed_dims=[64, 128, 348, 448],
        mlp_ratios=[8, 8, 4, 4],
        depths=[3, 4, 9, 3],
        distillation=False,
        use_v2d=True,
    ),
    decode_head=dict(in_channels=[64, 128, 348, 448], num_classes=150),
    auxiliary_head=dict(in_channels=348, num_classes=150)
)
# train_dataloader = dict(batch_size=4) # as gpus=4

