.class public Lcom/mediatek/camera/ext/SavingPath;
.super Ljava/lang/Object;
.source "SavingPath.java"

# interfaces
.implements Lcom/mediatek/camera/ext/ISavingPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilePath(I)Ljava/lang/String;
    .locals 1
    .parameter "filetype"

    .prologue
    .line 7
    const-string v0, "/DCIM/Camera"

    return-object v0
.end method
