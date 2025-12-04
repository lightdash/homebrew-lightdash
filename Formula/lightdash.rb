class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2226.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2226.2/lightdash-cli-0.2226.2-macos-arm64.tar.gz"
      sha256 "550cc59e9df96ba8d557526fd68a8205ee85688795871da7d6d69deadf9982b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2226.2/lightdash-cli-0.2226.2-macos-x64.tar.gz"
      sha256 "12d1e8f05ed272f7d511eb8dbb45b3bcf47c7d540bfa0bdd3664d831398762d7"
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
