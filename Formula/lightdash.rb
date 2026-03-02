class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2549.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2549.0/lightdash-cli-0.2549.0-macos-arm64.tar.gz"
      sha256 "053284acb552c9ee038b40fb7ade33e51d7eef339f9ba6a556a063b0ad0b05c5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2549.0/lightdash-cli-0.2549.0-macos-x64.tar.gz"
      sha256 "910eb70f784f39498fd6bc03dec6ddca692d961066282221a7b02de9baab0a54"
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
