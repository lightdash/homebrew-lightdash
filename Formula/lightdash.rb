class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3428.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3428.0/lightdash-cli-0.3428.0-macos-arm64.tar.gz"
      sha256 "6711edbfdba799d6e825cc947094d6664cbd559650882df3075a841450fcba4a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3428.0/lightdash-cli-0.3428.0-macos-x64.tar.gz"
      sha256 "dcdac1a6eb8c3b27072e786c93ddbdbcf3090c0ad0c3b717e40e1619c6bb24df"
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
