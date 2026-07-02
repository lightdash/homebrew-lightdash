class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3286.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3286.0/lightdash-cli-0.3286.0-macos-arm64.tar.gz"
      sha256 "73ec003662a04a4d28616f67aacb15cc92af8211cd92a7cec07a005306849a41"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3286.0/lightdash-cli-0.3286.0-macos-x64.tar.gz"
      sha256 "ca637f23e80f7bd1f1d46097c9bed5ba2d90c2df42c490e17ec87d5f7cab2288"
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
