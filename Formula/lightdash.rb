class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3430.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3430.0/lightdash-cli-0.3430.0-macos-arm64.tar.gz"
      sha256 "477325def9c8e26f1f49149ef930e53f8eb1423ce3b48f0598000efa8862f21c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3430.0/lightdash-cli-0.3430.0-macos-x64.tar.gz"
      sha256 "e0da4276e5ed2f030ddebb46743db4b9ddfef88edff0791d7bb5faa9775a70ec"
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
