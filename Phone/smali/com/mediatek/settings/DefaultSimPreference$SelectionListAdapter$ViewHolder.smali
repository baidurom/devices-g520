.class Lcom/mediatek/settings/DefaultSimPreference$SelectionListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DefaultSimPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/DefaultSimPreference$SelectionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mCkRadioOn:Landroid/widget/RadioButton;

.field mImageSim:Landroid/widget/RelativeLayout;

.field mImageStatus:Landroid/widget/ImageView;

.field mTextName:Landroid/widget/TextView;

.field mTextNum:Landroid/widget/TextView;

.field mTextNumFormat:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/mediatek/settings/DefaultSimPreference$SelectionListAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/DefaultSimPreference$SelectionListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/mediatek/settings/DefaultSimPreference$SelectionListAdapter$ViewHolder;->this$1:Lcom/mediatek/settings/DefaultSimPreference$SelectionListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
