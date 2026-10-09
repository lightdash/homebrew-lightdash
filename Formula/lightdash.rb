class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.517.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.517.0/lightdash-cli-2.517.0-macos-arm64.tar.gz"
      sha256 "86b23dd66c97f94c60d91b76a8ef2fc690109c6b856a1cc4000126fbde8559bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.517.0/lightdash-cli-2.517.0-macos-x64.tar.gz"
      sha256 "19beca053367c9b8b53740d3eb495ffb43a5c25483fbbd47703f574758241872"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.517.0/lightdash-cli-2.517.0-linux-x64.tar.gz"
    sha256 "92eee4a66da0aef8e9655a134593a6d80c813d97a331cfe17ed1af93e0bd2e10"

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
