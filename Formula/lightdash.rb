class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.9.2/lightdash-cli-2.9.2-macos-arm64.tar.gz"
      sha256 "b967718501059bbfc2646cacf1d74c6f8b59d09bd00a338541c51a20fd8d9ea5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.9.2/lightdash-cli-2.9.2-macos-x64.tar.gz"
      sha256 "fc08cef445361b159187c491ade8ca9a26ac78fd0c95256846ebe22c890ec1c8"
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
