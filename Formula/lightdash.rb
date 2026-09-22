class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.289.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.289.0/lightdash-cli-2.289.0-macos-arm64.tar.gz"
      sha256 "a7206f46d2e4cdc859128a5fcc9fb90507a8fc997869994c090fc850b5d3ab19"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.289.0/lightdash-cli-2.289.0-macos-x64.tar.gz"
      sha256 "44a0bfc0c9a6bd3c69f9ec890490d1cfe2b9429c966715d0feb73a2d3b379b8b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.289.0/lightdash-cli-2.289.0-linux-x64.tar.gz"
    sha256 "adf86141007954bf9857b40476388e9ac38c1378d846977ace4d0c270419186b"

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
