class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2742.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2742.1/lightdash-cli-0.2742.1-macos-arm64.tar.gz"
      sha256 "c8f5e79488e345a719d301ea6de6660ffbc1f3a1322d56dce87a0fd3736c0952"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2742.1/lightdash-cli-0.2742.1-macos-x64.tar.gz"
      sha256 "8feeacbfdf754b698381864fcb59b94e954ebc621bd253adabf056c8bacf131b"
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
