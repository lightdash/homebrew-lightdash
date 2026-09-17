class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.254.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.254.2/lightdash-cli-2.254.2-macos-arm64.tar.gz"
      sha256 "913665efd22832d66362065dd834abbe90cde89b4550b3bdbb5f6666f454f38a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.254.2/lightdash-cli-2.254.2-macos-x64.tar.gz"
      sha256 "36892d0d1baef5f0d2e487e6c8515ce9414559778955452c74e93076a2bb4183"
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
