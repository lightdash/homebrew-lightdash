class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.148.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.148.2/lightdash-cli-2.148.2-macos-arm64.tar.gz"
      sha256 "affd043fb1d415ce958674a8aef25b8f01fb1868d28ca42623e8e6eaafa16479"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.148.2/lightdash-cli-2.148.2-macos-x64.tar.gz"
      sha256 "940f6e2625cca176e8cb03c716cb516c6c56829352d331d8d7f58fda7e02830f"
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
