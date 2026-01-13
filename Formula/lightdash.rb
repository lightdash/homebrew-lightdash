class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2334.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2334.0/lightdash-cli-0.2334.0-macos-arm64.tar.gz"
      sha256 "14caa6f6e4b6280ae4c65c5575804715d91ca352203a9339be92ce1a10cb2952"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2334.0/lightdash-cli-0.2334.0-macos-x64.tar.gz"
      sha256 "f7159615a7f8a24ec8056119d260e57ea068819f55af2ca6fbcbc3a015bacf9c"
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
