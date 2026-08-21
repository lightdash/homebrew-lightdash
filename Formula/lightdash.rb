class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.235.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.0/lightdash-cli-1.235.0-macos-arm64.tar.gz"
      sha256 "1f99881d68ead9990649c74849835cbf1c914e4097db6e697b805fee98c335b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.0/lightdash-cli-1.235.0-macos-x64.tar.gz"
      sha256 "6251d9de22ae2c73cbfd268f8d8dc81257d62db149b326ede46709b706f45149"
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
