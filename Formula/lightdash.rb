class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3128.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3128.0/lightdash-cli-0.3128.0-macos-arm64.tar.gz"
      sha256 "dd3f84876b6cd25f5ad44d99b232b053544048c8fab3ff554cb1ce96f7c929df"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3128.0/lightdash-cli-0.3128.0-macos-x64.tar.gz"
      sha256 "15b99bf4ba32f435f99c52f93e48b663bf21816a0267f7655abf564393e1e0e4"
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
