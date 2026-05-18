class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2962.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2962.2/lightdash-cli-0.2962.2-macos-arm64.tar.gz"
      sha256 "c274cf2fd8c31fe7da4dc97d6059871cb54a5944890a1cf4266bdb97e9d73aa7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2962.2/lightdash-cli-0.2962.2-macos-x64.tar.gz"
      sha256 "0353d364589b40767a9cd11bf28c00acf7e52dbc91b19f51001e3b0543a99a80"
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
