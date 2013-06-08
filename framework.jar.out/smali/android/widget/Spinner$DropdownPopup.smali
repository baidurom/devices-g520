.class Landroid/widget/Spinner$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleRes"

    .prologue
    const/4 v1, 0x0

    .line 913
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 914
    invoke-direct {p0, p2, p3, v1, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 916
    invoke-virtual {p0, p1}, Landroid/widget/Spinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 917
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setModal(Z)V

    .line 918
    invoke-virtual {p0, v1}, Landroid/widget/Spinner$DropdownPopup;->setPromptPosition(I)V

    .line 919
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/Spinner$DropdownPopup$1;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/widget/Spinner;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 928
    return-void
.end method

.method static synthetic access$100(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 906
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 932
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 933
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 934
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "hintText"

    .prologue
    .line 942
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 943
    return-void
.end method

.method public show()V
    .locals 11

    .prologue
    .line 947
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 948
    .local v0, background:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 949
    .local v1, bgOffset:I
    if-eqz v0, :cond_2

    .line 950
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 951
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v1, v8

    .line 956
    :goto_0
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v5

    .line 957
    .local v5, spinnerPaddingLeft:I
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v8, v8, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    .line 958
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getWidth()I

    move-result v7

    .line 959
    .local v7, spinnerWidth:I
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v6

    .line 961
    .local v6, spinnerPaddingRight:I
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v8, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 963
    .local v2, contentWidth:I
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/widget/Spinner;->access$300(Landroid/widget/Spinner;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v3, v8, v9

    .line 965
    .local v3, contentWidthLimit:I
    if-le v2, v3, :cond_0

    .line 966
    move v2, v3

    .line 969
    :cond_0
    sub-int v8, v7, v5

    sub-int/2addr v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 978
    .end local v2           #contentWidth:I
    .end local v3           #contentWidthLimit:I
    .end local v6           #spinnerPaddingRight:I
    .end local v7           #spinnerWidth:I
    :goto_1
    add-int v8, v1, v5

    invoke-virtual {p0, v8}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 979
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Landroid/widget/Spinner$DropdownPopup;->setInputMethodMode(I)V

    .line 980
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 981
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 982
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/Spinner$DropdownPopup;->setSelection(I)V

    .line 988
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v8, :cond_1

    .line 989
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 990
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v8, :cond_1

    .line 991
    new-instance v4, Landroid/widget/Spinner$DropdownPopup$2;

    invoke-direct {v4, p0}, Landroid/widget/Spinner$DropdownPopup$2;-><init>(Landroid/widget/Spinner$DropdownPopup;)V

    .line 1001
    .local v4, layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v8, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1002
    new-instance v8, Landroid/widget/Spinner$DropdownPopup$3;

    invoke-direct {v8, p0, v4}, Landroid/widget/Spinner$DropdownPopup$3;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v8}, Landroid/widget/Spinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1014
    .end local v4           #layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_1
    return-void

    .line 953
    .end local v5           #spinnerPaddingLeft:I
    :cond_2
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    const/4 v10, 0x0

    iput v10, v9, Landroid/graphics/Rect;->right:I

    iput v10, v8, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 971
    .restart local v5       #spinnerPaddingLeft:I
    :cond_3
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v8, v8, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 972
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getWidth()I

    move-result v7

    .line 973
    .restart local v7       #spinnerWidth:I
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v6

    .line 974
    .restart local v6       #spinnerPaddingRight:I
    sub-int v8, v7, v5

    sub-int/2addr v8, v6

    invoke-virtual {p0, v8}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 976
    .end local v6           #spinnerPaddingRight:I
    .end local v7           #spinnerWidth:I
    :cond_4
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v8, v8, Landroid/widget/Spinner;->mDropDownWidth:I

    invoke-virtual {p0, v8}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1
.end method
