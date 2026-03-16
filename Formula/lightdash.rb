class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2626.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2626.1/lightdash-cli-0.2626.1-macos-arm64.tar.gz"
      sha256 "252e7e9a33c751622a43561f26a1c921e4eb7cb8ead0bd8521c3037e337459cc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2626.1/lightdash-cli-0.2626.1-macos-x64.tar.gz"
      sha256 "e1d272800cce7ae823eb352966b43b1ddc3ed8ab1bb28ba3227b6ca4f1e327ee"
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
