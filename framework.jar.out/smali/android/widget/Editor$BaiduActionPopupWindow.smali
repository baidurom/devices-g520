.class Landroid/widget/Editor$BaiduActionPopupWindow;
.super Landroid/widget/Editor$ActionPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaiduActionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = #android:layout@yi_text_edit_action_popup_text#t


# instance fields
.field mClipboardManager:Landroid/content/ClipboardManager;

.field private mClipboardPopupWindow:Landroid/widget/Editor$BaiduClipboardPopupWindow;

.field private mClipboardTextView:Landroid/widget/TextView;

.field private mSearchTextView:Landroid/widget/TextView;

.field protected mTop:Z

.field private mVisibleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private positionFlag:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2960
    iput-object p1, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 2968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    .line 2969
    iput v1, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->positionFlag:I

    .line 2970
    iput-boolean v1, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mTop:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2960
    invoke-direct {p0, p1}, Landroid/widget/Editor$BaiduActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private startSemiView(I)V
    .locals 10
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    .line 3136
    const/4 v2, 0x0

    .line 3137
    .local v2, min:I
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3139
    .local v1, max:I
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3140
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 3141
    .local v4, selStart:I
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 3143
    .local v3, selEnd:I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3144
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3147
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :cond_0
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v8, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v2, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroid/widget/Editor;->mSearchText:Ljava/lang/CharSequence;

    .line 3149
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mSearchText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mSearchText:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 3150
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v5, v7

    .line 3151
    .local v5, startPointerX:I
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    .line 3152
    .local v6, startPointerY:I
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 3153
    .local v0, locationInWindow:[I
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 3155
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    aget v8, v0, v9

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 3156
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    const/4 v8, 0x1

    aget v8, v0, v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 3157
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mSearchText:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5, v6, p1}, Lcom/android/internal/util/SearchHelper;->startSearch(Landroid/content/Context;Ljava/lang/String;III)V

    .line 3159
    .end local v0           #locationInWindow:[I
    .end local v5           #startPointerX:I
    .end local v6           #startPointerY:I
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 3160
    return-void
.end method

.method private updateArrowPosition(IIIZ)V
    .locals 4
    .parameter "beforeClip"
    .parameter "afterClip"
    .parameter "contentWidth"
    .parameter "top"

    .prologue
    .line 3300
    sub-int v0, p2, p1

    .line 3301
    .local v0, shift:I
    iget-object v2, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/android/internal/widget/PopupLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/PopupLayout;->getDrawableWidth()I

    move-result v1

    .line 3302
    .local v1, width:I
    div-int/lit8 v2, p3, 0x2

    sub-int v0, v2, v0

    .line 3303
    sub-int v2, p3, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3304
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3306
    iget-object v2, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/android/internal/widget/PopupLayout;

    if-eqz p4, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    :goto_0
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/PopupLayout;->setXY(II)V

    .line 3307
    return-void

    .line 3306
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 23
    .parameter "positionY"

    .prologue
    .line 3213
    const/4 v14, 0x0

    .line 3214
    .local v14, min:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 3215
    .local v9, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3216
    iget v14, v9, Landroid/graphics/Rect;->top:I

    .line 3217
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 3218
    .local v18, outValue:Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v20

    const v21, #android:attr@actionBarSize#t

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3220
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 3221
    int-to-float v0, v14

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v14, v0

    .line 3223
    :cond_0
    const-string v20, "Editor"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "min "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " positionY = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    move/from16 v0, p1

    if-ge v0, v14, :cond_7

    .line 3225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    .line 3226
    .local v16, offsetEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 3227
    .local v13, lineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v20

    const/high16 v21, 0x3f00

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v6, v0

    .line 3228
    .local v6, endPositionX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 3229
    .local v7, endPositionY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 3230
    .local v5, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v20

    const/high16 v21, 0x3f80

    invoke-static/range {v20 .. v21}, Ljava/lang/Float;->compare(FF)I

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Float;->compare(FF)I

    move-result v20

    if-eqz v20, :cond_2

    .line 3231
    :cond_1
    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    const/high16 v21, 0x4080

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    .line 3233
    .local v17, offsetToBaseLine:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v20

    add-int v7, v20, v17

    .line 3237
    .end local v17           #offsetToBaseLine:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v20

    add-int v6, v6, v20

    .line 3238
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v20

    add-int v7, v7, v20

    .line 3239
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Landroid/widget/Editor;->isPositionVisible(II)Z
    invoke-static {v0, v6, v7}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;II)Z

    move-result v8

    .line 3240
    .local v8, endVisible:Z
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v4, v0, [I

    .line 3241
    .local v4, coords:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 3242
    const/16 v20, 0x1

    aget v20, v4, v20

    add-int v20, v20, v7

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x28

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v21

    add-int v20, v20, v21

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    const/16 v19, 0x1

    .line 3244
    .local v19, popupVisible:Z
    :goto_0
    if-eqz v8, :cond_4

    if-eqz v19, :cond_4

    .line 3245
    const/16 v20, 0x1

    aget v20, v4, v20

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x28

    add-int v20, v20, v21

    add-int v7, v7, v20

    .line 3246
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$BaiduActionPopupWindow;->mTop:Z

    .line 3272
    .end local v4           #coords:[I
    .end local v5           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v6           #endPositionX:I
    .end local v7           #endPositionY:I
    .end local v8           #endVisible:Z
    .end local v13           #lineEnd:I
    .end local v16           #offsetEnd:I
    .end local v19           #popupVisible:Z
    :goto_1
    return v7

    .line 3242
    .restart local v4       #coords:[I
    .restart local v5       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v6       #endPositionX:I
    .restart local v7       #endPositionY:I
    .restart local v8       #endVisible:Z
    .restart local v13       #lineEnd:I
    .restart local v16       #offsetEnd:I
    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    .line 3250
    .restart local v19       #popupVisible:Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$BaiduActionPopupWindow;->getTextOffset()I

    move-result v15

    .line 3251
    .local v15, offset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 3252
    .local v11, layout:Landroid/text/Layout;
    invoke-virtual {v11, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    .line 3254
    .local v12, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v20

    const/high16 v21, 0x3f80

    invoke-static/range {v20 .. v21}, Ljava/lang/Float;->compare(FF)I

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Float;->compare(FF)I

    move-result v20

    if-eqz v20, :cond_6

    .line 3255
    :cond_5
    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    const/high16 v21, 0x4080

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    .line 3256
    .restart local v17       #offsetToBaseLine:I
    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v20

    add-int v20, v20, v17

    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v21

    sub-int v20, v20, v21

    add-int p1, p1, v20

    .line 3260
    .end local v17           #offsetToBaseLine:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v20

    add-int p1, p1, v20

    .line 3263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 3266
    .local v10, handle:Landroid/graphics/drawable/Drawable;
    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x28

    add-int p1, p1, v20

    .line 3267
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$BaiduActionPopupWindow;->mTop:Z

    .end local v4           #coords:[I
    .end local v5           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v6           #endPositionX:I
    .end local v7           #endPositionY:I
    .end local v8           #endVisible:Z
    .end local v10           #handle:Landroid/graphics/drawable/Drawable;
    .end local v11           #layout:Landroid/text/Layout;
    .end local v12           #line:I
    .end local v13           #lineEnd:I
    .end local v15           #offset:I
    .end local v16           #offsetEnd:I
    .end local v19           #popupVisible:Z
    :goto_3
    move/from16 v7, p1

    .line 3272
    goto/16 :goto_1

    .line 3258
    .restart local v4       #coords:[I
    .restart local v5       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v6       #endPositionX:I
    .restart local v7       #endPositionY:I
    .restart local v8       #endVisible:Z
    .restart local v11       #layout:Landroid/text/Layout;
    .restart local v12       #line:I
    .restart local v13       #lineEnd:I
    .restart local v15       #offset:I
    .restart local v16       #offsetEnd:I
    .restart local v19       #popupVisible:Z
    :cond_6
    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v20

    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v21

    sub-int v20, v20, v21

    add-int p1, p1, v20

    goto :goto_2

    .line 3269
    .end local v4           #coords:[I
    .end local v5           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v6           #endPositionX:I
    .end local v7           #endPositionY:I
    .end local v8           #endVisible:Z
    .end local v11           #layout:Landroid/text/Layout;
    .end local v12           #line:I
    .end local v13           #lineEnd:I
    .end local v15           #offset:I
    .end local v16           #offsetEnd:I
    .end local v19           #popupVisible:Z
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$BaiduActionPopupWindow;->mTop:Z

    goto :goto_3
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 3100
    iget-object v0, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3101
    return-void
.end method

.method protected getTextOffset()I
    .locals 9

    .prologue
    .line 3171
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 3172
    .local v5, start:I
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 3174
    .local v1, end:I
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 3175
    .local v6, startLine:I
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 3177
    .local v2, endLine:I
    if-ne v6, v2, :cond_1

    .line 3178
    add-int v7, v5, v1

    div-int/lit8 v0, v7, 0x2

    .line 3194
    :cond_0
    :goto_0
    return v0

    .line 3179
    :cond_1
    sub-int v7, v6, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    .line 3181
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 3182
    .local v4, lastOffset:I
    iget-object v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 3183
    .local v3, firstOffset:I
    add-int v7, v3, v4

    div-int/lit8 v0, v7, 0x2

    .line 3184
    .local v0, center:I
    if-ge v0, v5, :cond_0

    .line 3185
    move v0, v5

    goto :goto_0

    .line 3189
    .end local v0           #center:I
    .end local v3           #firstOffset:I
    .end local v4           #lastOffset:I
    :cond_2
    iget v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->positionFlag:I

    if-nez v7, :cond_3

    move v0, v5

    .line 3190
    goto :goto_0

    .line 3191
    :cond_3
    iget v7, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->positionFlag:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    move v0, v1

    .line 3192
    goto :goto_0

    .line 3194
    :cond_4
    add-int v7, v5, v1

    div-int/lit8 v0, v7, 0x2

    goto :goto_0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 3204
    iget-object v1, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 3205
    .local v0, density:F
    iget-object v1, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 3094
    invoke-super {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    .line 3095
    iget-object v0, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardPopupWindow:Landroid/widget/Editor$BaiduClipboardPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$BaiduClipboardPopupWindow;->hide()V

    .line 3096
    return-void
.end method

.method protected initContentView()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const v6, #android:layout@yi_text_edit_action_popup_text#t

    const/4 v5, 0x0

    .line 2978
    new-instance v1, Lcom/android/internal/widget/PopupLayout;

    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/PopupLayout;-><init>(Landroid/content/Context;)V

    .line 2979
    .local v1, popupLayout:Lcom/android/internal/widget/PopupLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/PopupLayout;->setOrientation(I)V

    .line 2980
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #android:drawable@yi_list_divider_baidu_light#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/PopupLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2981
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/PopupLayout;->setShowDividers(I)V

    .line 2982
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #android:dimen@yi_floating_bar_divider_padding#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/PopupLayout;->setDividerPadding(I)V

    .line 2983
    iput-object v1, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 2984
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v4, #android:drawable@yi_text_edit_paste_window#t

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2988
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2991
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2994
    .local v2, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    .line 2995
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2996
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2997
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    const v4, #android:string@websearch#t

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2998
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3000
    invoke-virtual {v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 3001
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3002
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3003
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v4, #android:string@paste#t

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3004
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3006
    invoke-virtual {v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    .line 3007
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3008
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3009
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v4, #android:string@replace#t

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3010
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3026
    invoke-virtual {v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 3027
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3028
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3029
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    const v4, #android:string@clipboard#t

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3030
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3031
    new-instance v3, Landroid/widget/Editor$BaiduClipboardPopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {v3, v4, v5}, Landroid/widget/Editor$BaiduClipboardPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardPopupWindow:Landroid/widget/Editor$BaiduClipboardPopupWindow;

    .line 3032
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    iput-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 3033
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 3106
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->canPaste()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3107
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    const v4, #android:id@paste#t

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3108
    invoke-virtual {p0}, Landroid/widget/Editor$BaiduActionPopupWindow;->hide()V

    .line 3132
    :cond_0
    :goto_0
    return-void

    .line 3109
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_2

    .line 3110
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 3111
    .local v2, middle:I
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 3112
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3113
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->showSuggestions()V

    goto :goto_0

    .line 3114
    .end local v2           #middle:I
    :cond_2
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_3

    .line 3115
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Landroid/widget/Editor$BaiduActionPopupWindow;->startSemiView(I)V

    goto :goto_0

    .line 3120
    :cond_3
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_0

    .line 3121
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 3123
    .local v1, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 3124
    .local v0, clip:Landroid/content/ClipData;
    if-eqz v0, :cond_4

    .line 3125
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardPopupWindow:Landroid/widget/Editor$BaiduClipboardPopupWindow;

    invoke-virtual {v3}, Landroid/widget/Editor$BaiduClipboardPopupWindow;->show()V

    .line 3129
    :goto_1
    invoke-super {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    goto :goto_0

    .line 3127
    :cond_4
    iget-object v3, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardPopupWindow:Landroid/widget/Editor$BaiduClipboardPopupWindow;

    invoke-virtual {v3}, Landroid/widget/Editor$BaiduClipboardPopupWindow;->hide()V

    goto :goto_1
.end method

.method public show()V
    .locals 13

    .prologue
    const/16 v11, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3037
    iget-object v10, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    .line 3038
    .local v0, canPaste:Z
    iget-object v10, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v10}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v2, v8

    .line 3039
    .local v2, canSuggest:Z
    :goto_0
    iget-object v10, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    .line 3040
    .local v1, canSearch:Z
    const/4 v6, 0x0

    .line 3041
    .local v6, showClipboard:Z
    if-eqz v0, :cond_0

    .line 3042
    iget-object v10, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v10}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData;->getItemCount()I

    move-result v10

    if-le v10, v8, :cond_3

    move v6, v8

    .line 3044
    :cond_0
    :goto_1
    iget-object v12, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move v10, v9

    :goto_2
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3045
    iget-object v12, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    move v10, v9

    :goto_3
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3046
    iget-object v12, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    move v10, v9

    :goto_4
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3048
    iget-object v10, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move v11, v9

    :cond_1
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3052
    if-nez v0, :cond_7

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    .line 3090
    :goto_5
    return-void

    .end local v1           #canSearch:Z
    .end local v2           #canSuggest:Z
    .end local v6           #showClipboard:Z
    :cond_2
    move v2, v9

    .line 3038
    goto :goto_0

    .restart local v1       #canSearch:Z
    .restart local v2       #canSuggest:Z
    .restart local v6       #showClipboard:Z
    :cond_3
    move v6, v9

    .line 3042
    goto :goto_1

    :cond_4
    move v10, v11

    .line 3044
    goto :goto_2

    :cond_5
    move v10, v11

    .line 3045
    goto :goto_3

    :cond_6
    move v10, v11

    .line 3046
    goto :goto_4

    .line 3054
    :cond_7
    iget-object v10, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 3055
    if-eqz v0, :cond_8

    iget-object v10, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3056
    :cond_8
    if-eqz v6, :cond_9

    iget-object v10, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3057
    :cond_9
    if-eqz v2, :cond_a

    iget-object v10, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3058
    :cond_a
    if-eqz v1, :cond_b

    .line 3059
    iget-object v10, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3063
    :cond_b
    iget-object v10, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3065
    .local v7, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v7, :cond_c

    .line 3066
    iget-object v10, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3068
    .local v3, child:Landroid/widget/TextView;
    if-ne v7, v8, :cond_d

    .line 3069
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3085
    .end local v3           #child:Landroid/widget/TextView;
    :cond_c
    iget-object v8, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v8}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v8

    invoke-virtual {v8, p0, v9}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 3086
    invoke-virtual {p0}, Landroid/widget/Editor$BaiduActionPopupWindow;->computeLocalPosition()V

    .line 3087
    iget-object v8, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v8}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v5

    .line 3088
    .local v5, positionListener:Landroid/widget/Editor$PositionListener;
    invoke-virtual {v5}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v8

    invoke-virtual {v5}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/widget/Editor$BaiduActionPopupWindow;->updatePosition(II)V

    goto :goto_5

    .line 3073
    .end local v5           #positionListener:Landroid/widget/Editor$PositionListener;
    .restart local v3       #child:Landroid/widget/TextView;
    :cond_d
    if-nez v4, :cond_e

    .line 3074
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3065
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3075
    :cond_e
    add-int/lit8 v10, v7, -0x1

    if-ne v4, v10, :cond_f

    .line 3076
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_7

    .line 3078
    :cond_f
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_7
.end method

.method protected updatePosition(II)V
    .locals 8
    .parameter "parentPositionX"
    .parameter "parentPositionY"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3277
    iget v5, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPositionX:I

    add-int v2, p1, v5

    .line 3278
    .local v2, positionX:I
    iget v5, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPositionY:I

    add-int v3, p2, v5

    .line 3279
    .local v3, positionY:I
    move v0, v2

    .line 3281
    .local v0, beforeClipX:I
    invoke-virtual {p0, v3}, Landroid/widget/Editor$BaiduActionPopupWindow;->clipVertically(I)I

    move-result v3

    .line 3284
    iget-object v5, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3285
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v5, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    .line 3286
    .local v4, width:I
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3287
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3288
    iget-object v5, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    instance-of v5, v5, Lcom/android/internal/widget/PopupLayout;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mTop:Z

    invoke-direct {p0, v0, v2, v4, v5}, Landroid/widget/Editor$BaiduActionPopupWindow;->updateArrowPosition(IIIZ)V

    .line 3290
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$BaiduActionPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3291
    iget-object v5, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2, v3, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 3296
    :goto_0
    return-void

    .line 3293
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public updatePosition(IIZZ)V
    .locals 3
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    .line 3315
    iget-object v1, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor$BaiduActionPopupWindow;->getTextOffset()I

    move-result v2

    #calls: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v1, v2}, Landroid/widget/Editor;->access$1100(Landroid/widget/Editor;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3316
    invoke-virtual {p0}, Landroid/widget/Editor$BaiduActionPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3317
    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$BaiduActionPopupWindow;->computeLocalPosition()V

    .line 3318
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$BaiduActionPopupWindow;->updatePosition(II)V

    .line 3327
    :cond_1
    :goto_0
    return-void

    .line 3319
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3320
    invoke-virtual {p0}, Landroid/widget/Editor$BaiduActionPopupWindow;->computeLocalPosition()V

    .line 3321
    iget-object v1, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 3322
    .local v0, positionListener:Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$BaiduActionPopupWindow;->updatePosition(II)V

    goto :goto_0

    .line 3325
    .end local v0           #positionListener:Landroid/widget/Editor$PositionListener;
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor$BaiduActionPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public updatePositionFlag(I)V
    .locals 0
    .parameter "Flag"

    .prologue
    .line 3163
    iput p1, p0, Landroid/widget/Editor$BaiduActionPopupWindow;->positionFlag:I

    .line 3164
    return-void
.end method
