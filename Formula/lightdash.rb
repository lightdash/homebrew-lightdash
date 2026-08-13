class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.154.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.154.0/lightdash-cli-1.154.0-macos-arm64.tar.gz"
      sha256 "df011d99b9405042ace161ac590fb9f754331df2df05d714c76f4b836586acb4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.154.0/lightdash-cli-1.154.0-macos-x64.tar.gz"
      sha256 "9911aec10001b84ced4e8e15750eb29e79770442d4bb5a546bc16c0609650958"
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
