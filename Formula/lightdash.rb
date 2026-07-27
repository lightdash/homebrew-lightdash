class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3483.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3483.0/lightdash-cli-0.3483.0-macos-arm64.tar.gz"
      sha256 "14b46492f699a5c77a562820dfd0208e71f30aed6dc3785599b983c977a1b8a4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3483.0/lightdash-cli-0.3483.0-macos-x64.tar.gz"
      sha256 "77a554f17ff6f822a355f8a99e5faa4b2d1eb3fdd0daae6f1ce02569dd6c6db1"
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
