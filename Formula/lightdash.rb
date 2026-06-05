class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3099.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3099.1/lightdash-cli-0.3099.1-macos-arm64.tar.gz"
      sha256 "1878a9d2cc42ff78bb0c22542b3eb9633f5df2fc9583f5427575044cc73660a6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3099.1/lightdash-cli-0.3099.1-macos-x64.tar.gz"
      sha256 "e9b7871956c787cc98eab9595cbe017c185cbd339e7378ce4bdc948a45c7cb36"
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
