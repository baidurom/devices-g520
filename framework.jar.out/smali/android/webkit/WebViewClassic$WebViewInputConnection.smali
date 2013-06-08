.class Landroid/webkit/WebViewClassic$WebViewInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewInputConnection"
.end annotation


# instance fields
.field private mBatchLevel:I

.field private mHint:Ljava/lang/String;

.field private mImeOptions:I

.field private mInputType:I

.field private mIsAutoCompleteEnabled:Z

.field private mIsAutoFillable:Z

.field private mIsKeySentByMe:Z

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mMaxLength:I

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    .line 175
    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 176
    return-void
.end method

.method private limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "numReplaced"

    .prologue
    const/4 v4, 0x0

    .line 619
    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    if-lez v2, :cond_0

    .line 620
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 621
    .local v0, editable:Landroid/text/Editable;
    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v1, v2, p2

    .line 622
    .local v1, maxReplace:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 623
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 625
    invoke-interface {p1, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 628
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #maxReplace:I
    :cond_0
    return-object p1
.end method

.method private restartInput()V
    .locals 2

    .prologue
    .line 632
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 633
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 636
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 638
    :cond_0
    return-void
.end method

.method private sendCharacter(C)V
    .locals 10
    .parameter "c"

    .prologue
    const/4 v9, 0x0

    .line 584
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v7, :cond_0

    .line 585
    const/4 v7, -0x1

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v7

    iput-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 587
    :cond_0
    const/4 v7, 0x1

    new-array v1, v7, [C

    .line 588
    .local v1, chars:[C
    aput-char p1, v1, v9

    .line 589
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v7, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 590
    .local v3, events:[Landroid/view/KeyEvent;
    if-eqz v3, :cond_1

    .line 591
    move-object v0, v3

    .local v0, arr$:[Landroid/view/KeyEvent;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 592
    .local v2, event:Landroid/view/KeyEvent;
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 591
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 595
    .end local v0           #arr$:[Landroid/view/KeyEvent;
    .end local v2           #event:Landroid/view/KeyEvent;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v8, 0x91

    invoke-virtual {v7, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 596
    .local v6, msg:Landroid/os/Message;
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 598
    .end local v6           #msg:Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sendKey(I)V
    .locals 15
    .parameter "keyCode"

    .prologue
    .line 606
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 607
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 611
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 615
    return-void
.end method

.method private setNewText(IILjava/lang/CharSequence;)V
    .locals 14
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 534
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    .line 535
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    .line 536
    .local v1, editable:Landroid/text/Editable;
    move/from16 v0, p2

    invoke-interface {v1, p1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 537
    .local v5, original:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 538
    .local v2, isCharacterAdd:Z
    const/4 v3, 0x0

    .line 539
    .local v3, isCharacterDelete:Z
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 540
    .local v10, textLength:I
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 541
    .local v6, originalLength:I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    .line 542
    .local v9, selectionStart:I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 543
    .local v8, selectionEnd:I
    if-ne v9, v8, :cond_0

    .line 544
    if-le v10, v6, :cond_4

    .line 545
    add-int/lit8 v11, v6, 0x1

    if-ne v10, v11, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v5, v12, v6}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v2, 0x1

    .line 554
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 555
    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendCharacter(C)V

    .line 569
    :cond_1
    :goto_1
    iget-object v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v11}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .local v4, newText:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    invoke-interface {v1, v11, p1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 572
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 573
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v11

    move/from16 v0, p2

    invoke-interface {v1, v0, v11}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 574
    iget-object v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v11}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkit/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    .line 576
    .end local v4           #newText:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    .line 577
    return-void

    .line 545
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 548
    :cond_4
    if-le v6, v10, :cond_0

    .line 549
    add-int/lit8 v11, v6, -0x1

    if-ne v10, v11, :cond_5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v5, v12, v10}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v3, 0x1

    :goto_2
    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 556
    :cond_6
    if-eqz v3, :cond_7

    .line 557
    const/16 v11, 0x43

    invoke-direct {p0, v11}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKey(I)V

    .line 559
    iget-object v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_1

    .line 560
    :cond_7
    if-ne v10, v6, :cond_8

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v5, v12, v10}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v11

    if-nez v11, :cond_1

    .line 565
    :cond_8
    iget-object v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v11, v11, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x8f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v11, v12, p1, v0, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 567
    .local v7, replaceMessage:Landroid/os/Message;
    iget-object v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v11, v11, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private updateSelection()V
    .locals 7

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    .line 514
    .local v6, editable:Landroid/text/Editable;
    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 515
    .local v2, selectionStart:I
    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 516
    .local v3, selectionEnd:I
    invoke-static {v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 517
    .local v4, composingStart:I
    invoke-static {v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 518
    .local v5, composingEnd:I
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 519
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 520
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 523
    :cond_0
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->beginTextBatch()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)V

    .line 196
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 332
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 333
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->finishComposingText()Z

    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 10
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v8, -0x1

    .line 341
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 342
    .local v4, content:Landroid/text/Editable;
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 343
    .local v0, a:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 345
    .local v1, b:I
    if-le v0, v1, :cond_0

    .line 346
    move v7, v0

    .line 347
    .local v7, tmp:I
    move v0, v1

    .line 348
    move v1, v7

    .line 351
    .end local v7           #tmp:I
    :cond_0
    invoke-static {v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 352
    .local v2, ca:I
    invoke-static {v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 353
    .local v3, cb:I
    if-ge v3, v2, :cond_1

    .line 354
    move v7, v2

    .line 355
    .restart local v7       #tmp:I
    move v2, v3

    .line 356
    move v3, v7

    .line 358
    .end local v7           #tmp:I
    :cond_1
    if-eq v2, v8, :cond_3

    if-eq v3, v8, :cond_3

    .line 359
    if-ge v2, v0, :cond_2

    move v0, v2

    .line 360
    :cond_2
    if-le v3, v1, :cond_3

    move v1, v3

    .line 363
    :cond_3
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v8

    add-int v9, v1, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 364
    .local v5, endDelete:I
    if-le v5, v1, :cond_4

    .line 365
    const-string v8, ""

    invoke-direct {p0, v1, v5, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 367
    :cond_4
    const/4 v8, 0x0

    sub-int v9, v0, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 368
    .local v6, startDelete:I
    if-ge v6, v0, :cond_5

    .line 369
    const-string v8, ""

    invoke-direct {p0, v6, v0, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 371
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v8

    return v8
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    .line 203
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->commitTextBatch()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$300(Landroid/webkit/WebViewClassic;)V

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsAutoFillable()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    return v0
.end method

.method public initEditorInfo(Landroid/webkit/WebViewCore$TextFieldInitData;)V
    .locals 4
    .parameter "initData"

    .prologue
    .line 407
    iget v2, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mType:I

    .line 408
    .local v2, type:I
    const/16 v1, 0xa1

    .line 410
    .local v1, inputType:I
    const/high16 v0, 0x1200

    .line 412
    .local v0, imeOptions:I
    iget-boolean v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSpellCheckEnabled:Z

    if-nez v3, :cond_0

    .line 413
    const/high16 v3, 0x8

    or-int/2addr v1, v3

    .line 415
    :cond_0
    const/4 v3, 0x1

    if-eq v3, v2, :cond_2

    .line 416
    iget-boolean v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-eqz v3, :cond_1

    .line 417
    const/high16 v3, 0x800

    or-int/2addr v0, v3

    .line 419
    :cond_1
    iget-boolean v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-eqz v3, :cond_2

    .line 420
    const/high16 v3, 0x400

    or-int/2addr v0, v3

    .line 423
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 466
    or-int/lit8 v0, v0, 0x2

    .line 469
    :goto_0
    iget-object v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mLabel:Ljava/lang/String;

    iput-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mHint:Ljava/lang/String;

    .line 470
    iput v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    .line 471
    iput v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mImeOptions:I

    .line 472
    iget v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mMaxLength:I

    iput v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    .line 473
    iget-boolean v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsAutoCompleteEnabled:Z

    iput-boolean v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    .line 474
    iget-object v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mName:Ljava/lang/String;

    iput-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    .line 475
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 476
    return-void

    .line 425
    :pswitch_0
    or-int/lit8 v0, v0, 0x2

    .line 426
    goto :goto_0

    .line 428
    :pswitch_1
    const v3, 0x2c000

    or-int/2addr v1, v3

    .line 431
    or-int/lit8 v0, v0, 0x1

    .line 432
    goto :goto_0

    .line 434
    :pswitch_2
    or-int/lit16 v1, v1, 0xe0

    .line 435
    or-int/lit8 v0, v0, 0x2

    .line 436
    goto :goto_0

    .line 438
    :pswitch_3
    or-int/lit8 v0, v0, 0x3

    .line 439
    goto :goto_0

    .line 442
    :pswitch_4
    const/16 v1, 0xd1

    .line 444
    or-int/lit8 v0, v0, 0x2

    .line 445
    goto :goto_0

    .line 448
    :pswitch_5
    const/16 v1, 0x3002

    .line 452
    or-int/lit8 v0, v0, 0x5

    .line 453
    goto :goto_0

    .line 456
    :pswitch_6
    const/4 v1, 0x3

    .line 457
    or-int/lit8 v0, v0, 0x5

    .line 458
    goto :goto_0

    .line 462
    :pswitch_7
    or-int/lit8 v0, v0, 0x2

    .line 463
    or-int/lit8 v1, v1, 0x10

    .line 464
    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 7
    .parameter "editorAction"

    .prologue
    const/16 v6, 0x42

    const/4 v5, 0x1

    .line 377
    const/4 v0, 0x1

    .line 378
    .local v0, handled:Z
    packed-switch p1, :pswitch_data_0

    .line 399
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result v0

    .line 403
    :goto_0
    return v0

    .line 380
    :pswitch_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_0

    .line 383
    :pswitch_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_0

    .line 386
    :pswitch_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 390
    :pswitch_4
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)V

    .line 391
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 394
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public replaceSelection(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 290
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 291
    .local v3, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 292
    .local v2, selectionEnd:I
    sub-int v4, v2, v3

    invoke-direct {p0, p1, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 293
    invoke-direct {p0, v3, v2, p1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 294
    invoke-interface {v0, v3, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 295
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 297
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 298
    .local v1, newCaret:I
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 299
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/16 v10, 0x70

    const/16 v9, 0x43

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 217
    iget-boolean v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    if-nez v7, :cond_3

    .line 218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_8

    .line 219
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 223
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 224
    .local v0, content:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 225
    .local v4, start:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 226
    .local v1, end:I
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 227
    .local v3, selection:I
    if-le v4, v1, :cond_0

    .line 228
    move v5, v4

    .line 229
    .local v5, tmp:I
    move v4, v1

    .line 230
    move v1, v5

    .line 232
    .end local v5           #tmp:I
    :cond_0
    if-ne v4, v1, :cond_2

    .line 233
    invoke-virtual {p0, v6, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v6

    .line 271
    .end local v0           #content:Landroid/text/Editable;
    .end local v1           #end:I
    .end local v3           #selection:I
    .end local v4           #start:I
    :cond_1
    :goto_0
    return v6

    .line 235
    .restart local v0       #content:Landroid/text/Editable;
    .restart local v1       #end:I
    .restart local v3       #selection:I
    .restart local v4       #start:I
    :cond_2
    invoke-virtual {p0, v3, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 236
    sub-int v6, v1, v4

    invoke-virtual {p0, v6, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    .line 271
    .end local v0           #content:Landroid/text/Editable;
    .end local v1           #end:I
    .end local v3           #selection:I
    .end local v4           #start:I
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_0

    .line 239
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v7, v10, :cond_7

    .line 243
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 244
    .restart local v0       #content:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 245
    .restart local v4       #start:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 246
    .restart local v1       #end:I
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 247
    .restart local v3       #selection:I
    if-le v4, v1, :cond_5

    .line 248
    move v5, v4

    .line 249
    .restart local v5       #tmp:I
    move v4, v1

    .line 250
    move v1, v5

    .line 252
    .end local v5           #tmp:I
    :cond_5
    if-ne v4, v1, :cond_6

    .line 253
    invoke-virtual {p0, v8, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v6

    goto :goto_0

    .line 255
    :cond_6
    invoke-virtual {p0, v3, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 256
    sub-int v6, v1, v4

    invoke-virtual {p0, v8, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    goto :goto_1

    .line 259
    .end local v0           #content:Landroid/text/Editable;
    .end local v1           #end:I
    .end local v3           #selection:I
    .end local v4           #start:I
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v7

    if-eqz v7, :cond_3

    .line 260
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, newComposingText:Ljava/lang/String;
    invoke-virtual {p0, v2, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v6

    goto :goto_0

    .line 264
    .end local v2           #newComposingText:Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-eq v7, v9, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-eq v7, v10, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0
.end method

.method public setAutoFillable(I)V
    .locals 6
    .parameter "queryId"

    .prologue
    .line 179
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getAutoFillEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    .line 181
    iget v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 182
    .local v0, variation:I
    const/16 v1, 0xe0

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 185
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v3

    iget-boolean v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    iget-boolean v5, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/WebViewClassic;->requestFormData(Ljava/lang/String;IZZ)V

    .line 189
    :cond_1
    return-void

    .line 179
    .end local v0           #variation:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 504
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result v0

    .line 505
    .local v0, result:Z
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 506
    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 8
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 304
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 305
    .local v4, start:I
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 306
    .local v1, end:I
    if-ltz v4, :cond_0

    if-gez v1, :cond_1

    .line 307
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 308
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 310
    :cond_1
    if-ge v1, v4, :cond_2

    .line 311
    move v5, v1

    .line 312
    .local v5, temp:I
    move v1, v4

    .line 313
    move v4, v5

    .line 315
    .end local v5           #temp:I
    :cond_2
    sub-int v6, v1, v4

    invoke-direct {p0, p1, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 316
    .local v3, limitedText:Ljava/lang/CharSequence;
    invoke-direct {p0, v4, v1, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 317
    if-eq v3, p1, :cond_3

    .line 318
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr p2, v6

    .line 320
    :cond_3
    invoke-super {p0, v3, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 321
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 322
    if-eq v3, p1, :cond_4

    .line 323
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int v2, v4, v6

    .line 324
    .local v2, lastCaret:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->finishComposingText()Z

    .line 325
    invoke-virtual {p0, v2, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 327
    .end local v2           #lastCaret:I
    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method public setSelection(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 497
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result v0

    .line 498
    .local v0, result:Z
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 499
    return v0
.end method

.method public setTextAndKeepSelection(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 276
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 277
    .local v2, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 278
    .local v1, selectionEnd:I
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 279
    const/4 v3, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v0, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 280
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 282
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 283
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 284
    invoke-virtual {p0, v2, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 285
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->finishComposingText()Z

    .line 286
    return-void
.end method

.method public setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .parameter "outAttrs"

    .prologue
    .line 479
    iget v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 480
    iget v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mImeOptions:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 481
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mHint:Ljava/lang/String;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 482
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getCursorCapsMode(I)I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 484
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 485
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 486
    .local v2, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 487
    .local v1, selectionEnd:I
    if-ltz v2, :cond_0

    if-gez v1, :cond_1

    .line 488
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 489
    move v1, v2

    .line 491
    :cond_1
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 492
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 493
    return-void
.end method
