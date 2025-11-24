class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2203.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2203.0/lightdash-cli-0.2203.0-macos-arm64.tar.gz"
      sha256 "394a14e0a8d17ef94e24ef9ebc30e4ad0561b392447cecb27d70e0b6fa1ccded"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2203.0/lightdash-cli-0.2203.0-macos-x64.tar.gz"
      sha256 "99898d118a3684e70395d9ac773bf60d0cdb2b414b823ae1cd3fcdf05d594ff6"
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
