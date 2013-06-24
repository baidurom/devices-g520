.class public Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;
.super Lcom/mediatek/phone/ext/InCallTouchUiExtension;
.source "InCallTouchUiExtensionContainer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InCallTouchUiExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/phone/ext/InCallTouchUiExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/phone/ext/InCallTouchUiExtension;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 110
    const-string v0, "InCallTouchUiExtensionContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/phone/ext/InCallTouchUiExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 58
    const-string v0, "create sub extension list"

    invoke-static {v0}, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->log(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public onFinishInflate(Landroid/view/View;)V
    .locals 3
    .parameter "inCallTouchUi"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 83
    const-string v1, "onFinishInflate(), sub extension list is null, just return"

    invoke-static {v1}, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->log(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void

    .line 86
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate(), inCallTouchUi is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->log(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/InCallTouchUiExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/InCallTouchUiExtension;

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/ext/InCallTouchUiExtension;->onFinishInflate(Landroid/view/View;)V

    goto :goto_0
.end method

.method public remove(Lcom/mediatek/phone/ext/InCallTouchUiExtension;)V
    .locals 2
    .parameter "extension"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "remove extension, sub extension list is null, just return"

    invoke-static {v0}, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->log(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove extension, extension is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->log(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .parameter "cm"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 99
    const-string v1, "updateState(), sub extension list is null, just return"

    invoke-static {v1}, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->log(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void

    .line 102
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState(), call manager is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->log(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/mediatek/phone/ext/InCallTouchUiExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/phone/ext/InCallTouchUiExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/InCallTouchUiExtension;

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/ext/InCallTouchUiExtension;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0
.end method
