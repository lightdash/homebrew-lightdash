class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3422.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3422.2/lightdash-cli-0.3422.2-macos-arm64.tar.gz"
      sha256 "c3ffd8fd6797cf4300f535765faf518685bb979b6633392c8b285f7b7bcc5e16"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3422.2/lightdash-cli-0.3422.2-macos-x64.tar.gz"
      sha256 "dc355308b655d4bc363f2bdac1d9fded34c7c1b17d3668cf75b26e3147be0944"
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
