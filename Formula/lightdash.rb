class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.327.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.327.2/lightdash-cli-3.327.2-macos-arm64.tar.gz"
      sha256 "3175373b99593fedc88181ccc12eaefcd7d69b8d807a557fd67cec339819e126"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.327.2/lightdash-cli-3.327.2-macos-x64.tar.gz"
      sha256 "b9e222fef6bf9067ca584c60222ffb391d69f6d846c2a054b7b30fd3615e6d22"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.327.2/lightdash-cli-3.327.2-linux-x64.tar.gz"
    sha256 "e267d2a4b54a9801a9798deffcfa3fcdc3ee014c45972d07ca1326e43f4bc360"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
