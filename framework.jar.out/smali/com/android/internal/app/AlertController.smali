.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 106
    iput v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 122
    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 132
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 186
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 188
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 189
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 191
    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v3, 0x101005d

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    const v2, 0x1090023

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 197
    const/16 v1, 0xb

    const v2, 0x10900ac

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 200
    const/16 v1, 0xc

    const v2, 0x1090013

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 203
    const/16 v1, 0xd

    const v2, 0x1090012

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 206
    const/16 v1, 0xe

    const v2, 0x1090011

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 210
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    :goto_0
    return v2

    .line 218
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 219
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 222
    check-cast v1, Landroid/view/ViewGroup;

    .line 223
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 224
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 225
    add-int/lit8 v0, v0, -0x1

    .line 226
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 227
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 232
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 595
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 596
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 597
    const/high16 v3, 0x3f00

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 598
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020251

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 600
    .local v0, leftSpacer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 603
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020252

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 604
    .local v2, rightSpacer:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 605
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 607
    :cond_1
    return-void
.end method

.method private correctCustomPanelBackground(Landroid/widget/LinearLayout;Landroid/view/View;ZZ)V
    .locals 4
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "hasTitle"

    .prologue
    .line 740
    const v1, #layout@yi_alert_dialog_baidu_light#t

    .line 741
    .local v1, layoutId:I
    if-eqz p2, :cond_0

    iget v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 743
    const v0, #drawable@yi_dialog_middle_custom_baidu_light#t

    .line 744
    .local v0, customBackgroundId:I
    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 748
    .end local v0           #customBackgroundId:I
    :cond_0
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 24
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 593
    const/16 v21, 0x0

    const v22, 0x1080459

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 595
    .local v11, fullDark:I
    const/16 v21, 0x1

    const v22, 0x1080461

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 597
    .local v18, topDark:I
    const/16 v21, 0x2

    const v22, 0x1080456

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 599
    .local v9, centerDark:I
    const/16 v21, 0x3

    const v22, 0x1080453

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 601
    .local v6, bottomDark:I
    const/16 v21, 0x4

    const v22, 0x1080458

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 603
    .local v10, fullBright:I
    const/16 v21, 0x5

    const v22, 0x1080460

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 605
    .local v17, topBright:I
    const/16 v21, 0x6

    const v22, 0x1080455

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 607
    .local v8, centerBright:I
    const/16 v21, 0x7

    const v22, 0x1080452

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 609
    .local v5, bottomBright:I
    const/16 v21, 0x8

    const v22, 0x1080454

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 621
    .local v7, bottomMedium:I
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v20, v0

    .line 622
    .local v20, views:[Landroid/view/View;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v14, v0, [Z

    .line 623
    .local v14, light:[Z
    const/4 v13, 0x0

    .line 624
    .local v13, lastView:Landroid/view/View;
    const/4 v12, 0x0

    .line 626
    .local v12, lastLight:Z
    const/4 v15, 0x0

    .line 627
    .local v15, pos:I
    if-eqz p6, :cond_0

    .line 628
    aput-object p1, v20, v15

    .line 629
    const/16 v21, 0x0

    aput-boolean v21, v14, v15

    .line 630
    add-int/lit8 v15, v15, 0x1

    .line 638
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/16 v21, 0x0

    :goto_0
    aput-object v21, v20, v15

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    :goto_1
    aput-boolean v21, v14, v15

    .line 641
    add-int/lit8 v15, v15, 0x1

    .line 642
    if-eqz p3, :cond_1

    .line 643
    aput-object p3, v20, v15

    .line 644
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v21, v0

    aput-boolean v21, v14, v15

    .line 645
    add-int/lit8 v15, v15, 0x1

    .line 647
    :cond_1
    if-eqz p4, :cond_2

    .line 648
    aput-object p7, v20, v15

    .line 649
    const/16 v21, 0x1

    aput-boolean v21, v14, v15

    .line 652
    :cond_2
    const/16 v16, 0x0

    .line 653
    .local v16, setView:Z
    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_a

    .line 654
    aget-object v19, v20, v15

    .line 655
    .local v19, v:Landroid/view/View;
    if-nez v19, :cond_5

    .line 653
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .end local v16           #setView:Z
    .end local v19           #v:Landroid/view/View;
    :cond_3
    move-object/from16 v21, p2

    .line 638
    goto :goto_0

    .line 640
    :cond_4
    const/16 v21, 0x0

    goto :goto_1

    .line 658
    .restart local v16       #setView:Z
    .restart local v19       #v:Landroid/view/View;
    :cond_5
    if-eqz v13, :cond_6

    .line 659
    if-nez v16, :cond_8

    .line 660
    if-eqz v12, :cond_7

    move/from16 v21, v17

    :goto_4
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 664
    :goto_5
    const/16 v16, 0x1

    .line 666
    :cond_6
    move-object/from16 v13, v19

    .line 667
    aget-boolean v12, v14, v15

    goto :goto_3

    :cond_7
    move/from16 v21, v18

    .line 660
    goto :goto_4

    .line 662
    :cond_8
    if-eqz v12, :cond_9

    move/from16 v21, v8

    :goto_6
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_9
    move/from16 v21, v9

    goto :goto_6

    .line 670
    .end local v19           #v:Landroid/view/View;
    :cond_a
    if-eqz v13, :cond_b

    .line 671
    if-eqz v16, :cond_10

    .line 676
    if-eqz v12, :cond_f

    if-eqz p4, :cond_e

    .end local v7           #bottomMedium:I
    :goto_7
    invoke-virtual {v13, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 708
    .end local v10           #fullBright:I
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 710
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->setSelection(I)V

    .line 715
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/AlertController;->setFilletListViewCornerType(Landroid/widget/ListView;Landroid/view/View;ZZ)V

    .line 718
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/AlertController;->correctCustomPanelBackground(Landroid/widget/LinearLayout;Landroid/view/View;ZZ)V

    .line 719
    return-void

    .restart local v7       #bottomMedium:I
    .restart local v10       #fullBright:I
    :cond_e
    move v7, v5

    .line 676
    goto :goto_7

    :cond_f
    move v7, v6

    goto :goto_7

    .line 679
    :cond_10
    if-eqz v12, :cond_11

    .end local v10           #fullBright:I
    :goto_9
    invoke-virtual {v13, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    .restart local v10       #fullBright:I
    :cond_11
    move v10, v11

    goto :goto_9
.end method

.method private setFilletListViewCornerType(Landroid/widget/ListView;Landroid/view/View;ZZ)V
    .locals 1
    .parameter "listView"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "hasTitle"

    .prologue
    .line 722
    instance-of v0, p1, Lcom/android/internal/widget/RecycleFilletListView;

    if-eqz v0, :cond_1

    .line 723
    if-eqz p4, :cond_3

    .line 724
    if-nez p3, :cond_0

    if-eqz p2, :cond_2

    .line 725
    :cond_0
    check-cast p1, Lcom/android/internal/widget/RecycleFilletListView;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerType(I)V

    .line 737
    :cond_1
    :goto_0
    return-void

    .line 727
    .restart local p1
    :cond_2
    check-cast p1, Lcom/android/internal/widget/RecycleFilletListView;

    .end local p1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerType(I)V

    goto :goto_0

    .line 730
    .restart local p1
    :cond_3
    if-nez p3, :cond_4

    if-eqz p2, :cond_5

    .line 731
    :cond_4
    check-cast p1, Lcom/android/internal/widget/RecycleFilletListView;

    .end local p1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerType(I)V

    goto :goto_0

    .line 733
    .restart local p1
    :cond_5
    check-cast p1, Lcom/android/internal/widget/RecycleFilletListView;

    .end local p1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerType(I)V

    goto :goto_0
.end method
.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 538
    const/4 v2, 0x1

    .line 539
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 540
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 541
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v3, 0x0

    .line 542
    .local v3, whichButtons:I
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020019

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 543
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 546
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 553
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102001a

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 554
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 557
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 565
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102001b

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 566
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 569
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 577
    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 582
    if-ne v3, v2, :cond_4

    .line 583
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 591
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 548
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 550
    or-int/2addr v3, v2

    goto :goto_0

    .line 559
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 562
    or-int/2addr v3, v0

    goto :goto_1

    .line 571
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 574
    or-int/2addr v3, v1

    goto :goto_2

    .line 584
    :cond_4
    if-ne v3, v0, :cond_5

    .line 585
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 586
    :cond_5
    if-ne v3, v1, :cond_0

    .line 587
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v5

    .line 591
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x1020254

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 511
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 512
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 515
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 516
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 526
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 528
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 532
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 12
    .parameter "topPanel"

    .prologue
    const v8, 0x102024d

    const/4 v0, 0x0

    const/16 v11, 0x8

    .line 447
    const/4 v1, 0x1

    .line 449
    .local v1, hasTitle:Z
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 451
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 454
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v6, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 458
    .local v5, titleTemplate:Landroid/view/View;
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 507
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 460
    :cond_1
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v0, 0x1

    .line 462
    .local v0, hasTextTitle:Z
    :cond_2
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 463
    if-eqz v0, :cond_6

    .line 465
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x102024e

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 467
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 471
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v4

    .line 472
    .local v4, textColor:I
    if-eqz v4, :cond_3

    .line 473
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    :cond_3
    iget v6, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-lez v6, :cond_4

    .line 483
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 484
    :cond_4
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    .line 485
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 486
    :cond_5
    iget v6, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-nez v6, :cond_0

    .line 491
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 495
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 500
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #textColor:I
    :cond_6
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 501
    .restart local v5       #titleTemplate:Landroid/view/View;
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 502
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    invoke-virtual {p1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 504
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 17

    .prologue
    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, 0x1020253

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 386
    .local v3, contentPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    move-result v5

    .line 389
    .local v5, hasButtons:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, 0x102024c

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 390
    .local v2, topPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    sget-object v14, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v15, 0x101005d

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 392
    .local v6, a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v7

    .line 394
    .local v7, hasTitle:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, 0x1020250

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 395
    .local v8, buttonPanel:Landroid/view/View;
    if-nez v5, :cond_0

    .line 396
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 400
    :cond_0
    const/4 v4, 0x0

    .line 401
    .local v4, customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, 0x1020255

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #customPanel:Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 403
    .restart local v4       #customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, 0x102002b

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 404
    .local v9, custom:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v1, :cond_1

    .line 406
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v9, v1, v13, v14, v15}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 409
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 410
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    iput v13, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 419
    .end local v9           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v7, :cond_5

    .line 420
    const/4 v10, 0x0

    .line 421
    .local v10, divider:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    .line 422
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, 0x102024f

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 428
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 429
    .local v11, res:Landroid/content/res/Resources;
    invoke-virtual {v11}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v12

    .line 430
    .local v12, textColor:I
    if-eqz v12, :cond_4

    .line 431
    if-eqz v10, :cond_4

    .line 432
    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 437
    :cond_4
    if-eqz v10, :cond_5

    .line 438
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .end local v10           #divider:Landroid/view/View;
    .end local v11           #res:Landroid/content/res/Resources;
    .end local v12           #textColor:I
    :cond_5
    move-object/from16 v1, p0

    .line 442
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 443
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 444
    return-void

    .line 413
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, 0x1020255

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v13, 0x8

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 424
    .restart local v10       #divider:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, 0x1020256

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    goto :goto_1
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 179
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 180
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103bb

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 182
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 362
    packed-switch p1, :pswitch_data_0

    .line 370
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 364
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 366
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 368
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    .line 237
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 239
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 244
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 245
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 304
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 308
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 312
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 328
    :goto_0
    return-void

    .line 316
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 317
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 321
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 322
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 259
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 336
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 337
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 338
    if-lez p1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    if-nez p1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 348
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 355
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 263
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 249
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 274
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 283
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 284
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 285
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 286
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 287
    return-void
.end method
