class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2595.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2595.1/lightdash-cli-0.2595.1-macos-arm64.tar.gz"
      sha256 "fdff6c1fb292a4479c6058ee29fba2b33ce3e0a9bc338bcf16a6ddf7fed90c86"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2595.1/lightdash-cli-0.2595.1-macos-x64.tar.gz"
      sha256 "9dc0e39803faa9f21579ec553e3c9c6682685435e560a792dcb367e8059b6e43"
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
