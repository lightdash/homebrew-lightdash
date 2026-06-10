class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3125.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3125.1/lightdash-cli-0.3125.1-macos-arm64.tar.gz"
      sha256 "cd5aab2600cbdec02d8fd51b0f5c59273151c1daa6af50c4bc8d6e8e7b997b88"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3125.1/lightdash-cli-0.3125.1-macos-x64.tar.gz"
      sha256 "69079cd8c7e3336d09f9a00dc3941eafc1eadd4cd45522ae0f47a05a5452d109"
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
