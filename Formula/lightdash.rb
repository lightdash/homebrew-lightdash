class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3354.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3354.0/lightdash-cli-0.3354.0-macos-arm64.tar.gz"
      sha256 "80f48c47daef901ceb305b9e7b667d0bdd9b627acebfb51fb05016b5f13f4ade"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3354.0/lightdash-cli-0.3354.0-macos-x64.tar.gz"
      sha256 "49971174ed717b5d0f24d80c78a6eba340eef6ee1f81a8ea383a074e8b2ca928"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
