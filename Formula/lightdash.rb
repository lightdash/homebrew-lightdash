class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2971.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2971.0/lightdash-cli-0.2971.0-macos-arm64.tar.gz"
      sha256 "9d371f20399a96fc959d168819bc20c7b0ad371215e3e37d1ec9f549f89b7a9b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2971.0/lightdash-cli-0.2971.0-macos-x64.tar.gz"
      sha256 "4f4453b69db334e46cafdc67fd66d90a5e04a763b0790ca44b70019f9d89107b"
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
