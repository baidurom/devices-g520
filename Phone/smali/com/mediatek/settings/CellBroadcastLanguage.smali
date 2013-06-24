.class public Lcom/mediatek/settings/CellBroadcastLanguage;
.super Ljava/lang/Object;
.source "CellBroadcastLanguage.java"


# instance fields
.field private mLanguageId:I

.field private mLanguageName:Ljava/lang/String;

.field private mLanguageState:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "state"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/mediatek/settings/CellBroadcastLanguage;->mLanguageId:I

    .line 49
    iput-object p2, p0, Lcom/mediatek/settings/CellBroadcastLanguage;->mLanguageName:Ljava/lang/String;

    .line 50
    iput-boolean p3, p0, Lcom/mediatek/settings/CellBroadcastLanguage;->mLanguageState:Z

    .line 51
    return-void
.end method


# virtual methods
.method public getLanguageId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/settings/CellBroadcastLanguage;->mLanguageId:I

    return v0
.end method

.method public getLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastLanguage;->mLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageState()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/mediatek/settings/CellBroadcastLanguage;->mLanguageState:Z

    return v0
.end method

.method public setLanguageId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 58
    iput p1, p0, Lcom/mediatek/settings/CellBroadcastLanguage;->mLanguageId:I

    .line 59
    return-void
.end method

.method public setLanguageName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastLanguage;->mLanguageName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setLanguageState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/mediatek/settings/CellBroadcastLanguage;->mLanguageState:Z

    .line 75
    return-void
.end method
